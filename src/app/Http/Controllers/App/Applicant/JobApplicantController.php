<?php

namespace App\Http\Controllers\App\Applicant;

use App\Helpers\Core\Traits\FileHandler;
use App\Http\Resources\EmailConversationResource;
use App\Mail\App\SendApplicantConversationMail;
use App\Models\App\JobPost\ApplicationEmail;
use App\Models\Core\Status;
use App\Repositories\Core\Setting\SettingRepository;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use App\Models\App\JobPost\JobPost;
use App\Http\Controllers\Controller;
use App\Models\Core\Log\ActivityLog;
use Illuminate\Support\Facades\Mail;
use App\Models\App\Recruitment\JobStage;
use App\Mail\App\SendApplicantCustomMail;
use App\Models\App\Applicant\JobApplicant;
use App\Models\Core\Setting\NotificationEvent;
use App\Filters\App\Applicant\JobApplicantFilter;
use App\Helpers\App\AppOnDeleteRelatedModels;
use App\Repositories\Core\Status\StatusRepository;
use App\Services\App\Applicant\JobApplicantService;
use App\Http\Requests\App\Applicant\JobApplicantRequest;
use App\Notifications\App\Applicant\ApplicantDisqualifyNotification;

class JobApplicantController extends Controller
{
    use FileHandler;

    public function __construct(JobApplicantService $service, JobApplicantFilter $filter)
    {
        $this->service = $service;
        $this->filter = $filter;
    }

    private function loggingData($lang, $find, $replace, $auth = null, $model)
    {
        //Store to timeline
        $description = trans('default.' . $lang);
        $description = str_replace($find, $replace, $description);
        log_to_database($description, [], 'timeline', $auth, $model);
    }

    public function index(): object
    {
        return $this->service
            ->with([
                'appliedBy: id, first_name, last_name,email',
                'jobPost',
                'currentStage',
                'status',
                'answers',
            ])
            ->filters($this->filter)
            ->latest()
            ->paginate(request()->get('per_page', 10));
    }

    public function store(JobApplicantRequest $request): array
    {
        $inputs = $request->only(['applicant_id', 'job_post_id']);

        $apply_form_setting = JobPost::find($request->job_post_id);

        // check if the job already assigned to that applicant--
        $applicants = JobApplicant::where('job_post_id', $request->job_post_id)
            ->where('applicant_id', $request->applicant_id)->first();

        if ($applicants) {
            return custom_failed_response('already_applied_with_this_email');
        }

        $status_id = resolve(StatusRepository::class)->getStatusId('job_applicant', 'status_new');

        // get  new stage id of that job
        $new_stage = JobStage::where('job_post_id', $request->job_post_id)
            ->where('name', 'new')
            ->first();
        $newData = [
            'current_stage_id' => $new_stage->id ?? null,
            'status_id' => $status_id,
            'slug' => Str::uuid(),
            'apply_form_setting' => json_encode($request->apply_form_setting) ?? $apply_form_setting->apply_form_setting,
        ];
        $inputs = array_merge($inputs, $newData);

        $result = $this->service
            ->setAttributes($inputs)
            ->save();

        if (!$result) {
            return custom_failed_response('failed_to_store_job_applicant');
        }
        //Store to timeline
        $auth = auth()->user();
        $this->loggingData(
            'timeline_for_applied_job_by_system',
            ['{candidate_name}', '{job_post_name}', '{user_name}'],
            [$result->appliedBy->full_name, $result->jobPost->name, $auth->full_name],
            $auth,
            $result
        );

        return created_responses('job_applicant');
    }

    public function show(JobApplicant $applicant, $id): object
    {
        $imapEnabled = resolve(SettingRepository::class)->getDeliverySettingLists('imap_config');

        $data =  $applicant->with([
            'appliedBy',
            'jobPost.jobStages',
            'currentStage',
            'status',
            'answers',
        ])->find($id);

        // Check if "answers" field is not empty
        if (!empty($data->answers)) {
            // s3 supported attachments
            foreach ($data->answers as &$answer) {
                if (!empty($answer->attachment)) {
                    $answer->attachment = Storage::disk(config('filesystems.default'))->exists($answer->attachment)
                        ? Storage::disk(config('filesystems.default'))->url($answer->attachment) : asset($answer->attachment);
                }
            }

            $decodedAnswers = json_decode($data->answers, true);

            // Decode the inner "answer" JSON and replace the "answer" field
            foreach ($decodedAnswers as &$answer) {
                if (!empty($answer['answer'])) {
                    $answer['decodedAnswer'] = json_decode($answer['answer'], true);
                    unset($answer['answer']); // Remove the "answer" field
                } else {
                    $answer['decodedAnswer'] = [];
                }
            }
        } else {
            $decodedAnswers = [];
        }

        // Add the decoded answers to the $data object
        $data->candidateAnswers = $decodedAnswers;

        $data->imapEnabled =  isset($imapEnabled['imap_user']);

        return $data;
    }

    public function update(JobApplicantRequest $request, JobApplicant $jobApplicant)
    {
        $this->service
            ->setModel($jobApplicant)
            ->save($request->only(['current_stage_id', 'review', 'status_id']));

        if (isset($request->current_stage_id)) {
            //Store to timeline
            $auth = auth()->user();

            if (strtolower($jobApplicant->currentStage->name) === 'disqualified') {
                $lang = 'timeline_for_candidate_disqualified';
                $find = ['{candidate_name}', '{job_post_name}', '{user_name}', '{disqualification_reason}'];

                $replace = [$jobApplicant->appliedBy->full_name,
                    $jobApplicant->jobPost->name,
                    $auth->full_name,
                    $jobApplicant->disqualification_reason ?? 'Unknown',];
            } elseif (strtolower($jobApplicant->currentStage->name) === 'hired') {
                $lang = 'timeline_for_job_hired';
                $find = ['{candidate_name}', '{job_post_name}', '{user_name}'];
                $replace = [$jobApplicant->appliedBy->full_name,
                    $jobApplicant->jobPost->name,
                    $auth->full_name,];
            } else {
                $lang = 'timeline_for_change_stage';

                $find = ['{candidate_name}', '{stage_name}', '{user_name}'];
                $replace = [$jobApplicant->appliedBy->full_name,
                    $jobApplicant->currentStage->name,
                    $auth->full_name,];
            }
            $this->loggingData($lang, $find, $replace, $auth, $jobApplicant);
        }

        if (isset($request->review)) {
            // Add to timeline
            $auth = auth()->user();
            $this->loggingData(
                'timeline_for_give_review',
                ['{candidate_name}', '{review}', '{user_name}'],
                [$jobApplicant->appliedBy->full_name,
                    $jobApplicant->review,
                    $auth->full_name,],
                $auth,
                $jobApplicant
            );
        }

        return updated_responses('job_applicant');
    }

    public function destroy(JobApplicant $jobApplicant, AppOnDeleteRelatedModels $model)
    {
        $model = $model->setModel($jobApplicant);
        $data = $model->loadRelatedModelsOnDeleteJobApplicant();
        $model->removeData();
        $jobApplicant->delete();

        return deleted_responses('job_applicant');
    }

    public function changeReview(JobApplicant $jobApplicant, Request $request, $id)
    {
        $request->validate([
            'review' => ['nullable', Rule::in(['0', '1', '2', '3', '4', '5'])],
        ]);

        $jobApplicant = $jobApplicant->find($id);
        $jobApplicant->review = $request->review;
        $jobApplicant->save();

        // Add to timeline
        $auth = auth()->user();
        $this->loggingData(
            'timeline_for_give_review',
            ['{candidate_name}', '{review}', '{user_name}'],
            [$jobApplicant->appliedBy->full_name,
                $jobApplicant->review,
                $auth->full_name,],
            $auth,
            $jobApplicant
        );

        return updated_responses('review');
    }

    public function changeStage(JobApplicant $jobApplicant, Request $request, $id)
    {
        $request->validate([
            'next_stage_id' => 'required|exists:job_stages,id',
        ]);

        $jobApplicant = $jobApplicant->find($id);
        $jobApplicant->current_stage_id = intval($request->next_stage_id);

        $stage = JobStage::find($request->next_stage_id);
        $status_id = null;

        switch (strtolower(trim($stage->name))) {
            case 'new':
                $status_id = resolve(StatusRepository::class)->getStatusId('job_applicant', 'status_new');
                break;
            case 'hired':
                $status_id = resolve(StatusRepository::class)->getStatusId('job_applicant', 'status_hired');
                break;
            case 'disqualified':
                $status_id = resolve(StatusRepository::class)->getStatusId('job_applicant', 'status_disqualified');
                break;
            default:
                $status_id = resolve(StatusRepository::class)->getStatusId('job_applicant', 'status_in_progress');
        }

        $jobApplicant->status_id = $status_id;
        $jobApplicant->save();

        //Store to timeline
        $auth = auth()->user();

        if (strtolower($jobApplicant->currentStage->name) === 'disqualified') {
            $lang = 'timeline_for_candidate_disqualified';

            $find = ['{candidate_name}', '{job_post_name}', '{user_name}', '{disqualification_reason}'];

            $replace = [$jobApplicant->appliedBy->full_name,
                $jobApplicant->jobPost->name,
                $auth->full_name,
                $jobApplicant->disqualification_reason ?? 'Unknown',];
        } elseif (strtolower($jobApplicant->currentStage->name) === 'hired') {
            $lang = 'timeline_for_job_hired';
            $find = ['{candidate_name}', '{job_post_name}', '{user_name}'];
            $replace = [$jobApplicant->appliedBy->full_name,
                $jobApplicant->jobPost->name,
                $auth->full_name,];
        } else {
            $lang = 'timeline_for_change_stage';

            $find = ['{candidate_name}', '{stage_name}', '{user_name}'];
            $replace = [$jobApplicant->appliedBy->full_name,
                $jobApplicant->currentStage->name,
                $auth->full_name,];
        }
        $this->loggingData($lang, $find, $replace, $auth, $jobApplicant);

        return updated_responses('applicant_stage');
    }

    public function disqualify(JobApplicant $jobApplicant, Request $request)
    {
        $request->validate([
            'status_id' => 'required|exists:statuses,id',
            'disqualification_reason' => 'nullable|string',
        ]);

        $notificationTypes = intval($request->notify) === 1 ? ['database', 'mail'] : ['database'];

        $this->service
            ->setModel($jobApplicant)
            ->setAttrs($request->only('disqualification_reason', 'status_id', 'mail', 'subject'))
            ->disqualifyCandidate()
            ->notify('candidate_disqualified', ApplicantDisqualifyNotification::class);

        //Add to Timeline
        $lang = 'timeline_for_candidate_disqualified';
        $auth = auth()->user();
        $find = ['{candidate_name}', '{job_post_name}', '{user_name}', '{disqualification_reason}'];

        $replace = [$jobApplicant->appliedBy->full_name,
            $jobApplicant->jobPost->name,
            $auth->full_name,
            $jobApplicant->disqualification_reason ?? 'Unknown',];

        $this->loggingData($lang, $find, $replace, $auth, $jobApplicant);

        return status_response('job_applicant', strtolower(__t($jobApplicant->load('status')->status->name)));
    }

    public function selectableStatus()
    {
        return Status::query()->where('type', 'job_applicant')->get(['id', 'name']);
    }

    public function updateDisqualificationNote(JobApplicant $jobApplicant, Request $request)
    {
        $request->validate([
            'disqualification_reason' => 'nullable|string',
        ]);

        $jobApplicant->disqualification_reason = $request->disqualification_reason;
        $jobApplicant->save();

        return updated_responses('disqualification_reason');
    }

    public function sendEmailToApplicant(JobApplicant $jobApplicant, Request $request)
    {
        $request->validate([
            'subject' => 'required|string',
            'mail' => 'required|string',
        ]);

        Mail::to($jobApplicant->appliedBy->email)
            ->send(new SendApplicantCustomMail($request, $jobApplicant));

        return custom_response('email_sent_successfully');
    }

    public function getDisqualifyTemplate(JobApplicant $jobApplicant)
    {
        $notificationEvent = NotificationEvent::with('templates')
            ->where('name', 'disqualification_mail_for_candidate')
            ->first();

        $template = $this->getTemplate($notificationEvent);

        $replaceableValues = [
            '{job_post}' => $jobApplicant->jobPost->name,
            '{candidate_name}' => $jobApplicant->appliedBy->name,
            '{app_name}' => config('app.name'),
        ];

        $subject = count($notificationEvent->templates) > 0 ? optional($notificationEvent)->templates[0]->subject : '';

        return ['template' => strtr($template, $replaceableValues), 'subject' => strtr($subject, $replaceableValues)];
    }

    private function getTemplate($notificationEvent)
    {
        if (count(optional($notificationEvent)->templates) > 0) {
            return optional($notificationEvent)->templates[0]->custom_content
                ? optional($notificationEvent)->templates[0]->custom_content
                : optional($notificationEvent)->templates[0]->default_content;
        }

        return '';
    }

    public function getTimeline(JobApplicant $jobApplicant, $id)
    {
        return ActivityLog::query()
            ->select('description', 'created_at')
            ->where('log_name', 'timeline')
            ->where('subject_type', $jobApplicant->getMorphClass())
            ->where('subject_id', $id)
            ->latest()
            ->get();
    }

    public function getConversation(JobApplicant $jobApplicant)
    {
        return EmailConversationResource::collection(ApplicationEmail::query()
            ->with(['applicant:id,first_name,last_name,email', 'user', 'attachments'])
            ->where('applicant_id', $jobApplicant->applicant_id)
            ->where('job_post_id', $jobApplicant->job_post_id)
            ->get());
    }

    public function sentReplyToCandidate(JobApplicant $jobApplicant, Request $request)
    {
        $request->validate([
            'subject' => 'required|string',
            'text_html' => 'required|string',
        ]);

        $paths = $this->storeAttachments();

        Mail::to($jobApplicant->appliedBy->email)
            ->send(new SendApplicantConversationMail(
                $jobApplicant,
                array_merge($request->only(
                    ['subject', 'text_html']),
                    ['user_id' => auth()->id(), 'paths' => $paths])
                ));

        return custom_response('email_sent_successfully');
    }

    public function storeAttachments(): array
    {
        $paths = [];

        foreach (request('attachments', []) as $attachment) {
            $file_path = $this->withOriginalName()
                ->storeFile($attachment, 'job_post_conversation_attachment');
            $paths[] = $file_path;
        }
        return $paths;
    }
}
