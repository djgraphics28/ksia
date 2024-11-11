<?php

namespace App\Jobs\Export;

use App\Jobs\Export\FastExportTraits\ActivityLogTrait;
use App\Jobs\Export\FastExportTraits\AdminUserTrait;
use App\Jobs\Export\FastExportTraits\CandidatesTrait;
use App\Jobs\Export\FastExportTraits\EmailConversationTrait;
use App\Jobs\Export\FastExportTraits\EventsTrait;
use App\Jobs\Export\FastExportTraits\JobApplicantFormCustomTrait;
use App\Jobs\Export\FastExportTraits\JobApplicantFormFieldsTrait;
use App\Jobs\Export\FastExportTraits\JobApplicantFormSectionTrait;
use App\Jobs\Export\FastExportTraits\JobApplicationsTrait;
use App\Jobs\Export\FastExportTraits\JobPostsApplyFormCustomTrait;
use App\Jobs\Export\FastExportTraits\JobPostsApplyFormFieldsTrait;
use App\Jobs\Export\FastExportTraits\JobPostsApplyFormSectionTrait;
use App\Jobs\Export\FastExportTraits\JobPostsTrait;
use App\Jobs\Export\FastExportTraits\JobTypeTrait;
use App\Jobs\Export\FastExportTraits\ModuleControllerTrait;
use App\Jobs\Export\FastExportTraits\NotesTrait;
use App\Jobs\Export\FastExportTraits\TodoTrait;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;
use Rap2hpoutre\FastExcel\FastExcel;
use Rap2hpoutre\FastExcel\SheetCollection;

class FastExportJob implements ShouldQueue
{
    use Dispatchable;
    use ModuleControllerTrait,
        CandidatesTrait,
        JobPostsTrait,
        JobPostsApplyFormSectionTrait,
        JobPostsApplyFormFieldsTrait,
        JobPostsApplyFormCustomTrait,
        JobApplicationsTrait,
        JobApplicantFormSectionTrait,
        JobApplicantFormFieldsTrait,
        JobApplicantFormCustomTrait,
        NotesTrait,
        EventsTrait,
        EmailConversationTrait,
        TodoTrait,
        AdminUserTrait,
        ActivityLogTrait,
        TodoTrait,
        JobTypeTrait;

    protected string $file_path;
    protected string $timezone;
    public function __construct($file_name, $requested_modules = [], $module_export_id = null, $timezone = null)
    {
        // Extract directory from full path
        $directory = dirname($file_name);
//        // Check if directory exists, if not, create it
        if (!Storage::disk('public')->exists($directory)) {
            Storage::disk('public')->makeDirectory($directory); // Recursive directory creation
        }
        $this->file_path = Storage::disk('public')->path($file_name);
        $this->requested_modules = $requested_modules;
        $this->module_export_id = $module_export_id;
//        $this->timezone = $timezone ?? timezone();
    }

    public function failed(\Throwable $exception)
    {
        // handle failed export
        $this->rejectExportAndNotify([
            'message' => $exception->getMessage(),
            // 'message' => 'Export failed.'
        ]);
        Log::info('Export : failed');
    }

    public function handle()
    {
        ini_set('max_execution_time', 600);
        ini_set('memory_limit', "512M");
        $sheets = $this->getSheets();
        if(count($sheets) <= 0) {
            // update status completed
            $this->completeExportAndNotify();
            Log::info('Export : completed with no sheet');
            return;
        }
        // Define data sets for each sheet
        $dataSets = new SheetCollection($sheets);

        // update status processing
        $this->processingExport();
        Log::info('Export : processing');

        // Export multiple sheets without chunking
        (new FastExcel($dataSets))->export($this->file_path, function ($row) {

            // Modify row data for candidates
            if ($row->sheet_name === 'candidates') {
                return $this->candidateMap($row);
            }

            // Modify row data for job_type
            if ($row->sheet_name === 'job_posts') {
                $this->updateCompletedModule(['candidates']);
                return $this->jobPostMap($row);
            }

            // Modify row data for job_post_apply_form_section
            if ($row->sheet_name === 'job_post_apply_form_sections') {
//                $this->updateCompletedModule(['candidates', 'job_posts']);
                return $this->jobPostApplyFormSectionMap($row);
            }

//            // Modify row data for job_post_apply_form_fields
            if ($row->sheet_name === 'job_post_apply_form_fields') {
//                $this->updateCompletedModule(['candidates', 'job_posts']);
                return $this->jobPostApplyFormFieldsMap($row);
            }
//
//            // Modify row data for job_post_apply_form_custom
            if ($row->sheet_name === 'job_post_apply_form_custom') {
                $this->updateCompletedModule(['candidates', 'job_posts']);
                return $this->jobPostApplyFormCustomMap($row);
            }
//
//            // Modify row data for job_applications
            if ($row->sheet_name === 'job_applications') {
                $this->updateCompletedModule(['candidates', 'job_posts', 'job_post_apply_form']);
                return $this->jobApplicationMap($row);
            }
//
//            // Modify row data for job_applicant_form_section
            if ($row->sheet_name === 'job_applicant_form_sections') {
                return $this->jobApplicantFormSectionMap($row);
            }
//
//            // Modify row data for job_applicant_form_fields
            if ($row->sheet_name === 'job_applicant_form_fields') {
//                $this->updateCompletedModule(['candidates']);
                return $this->jobApplicantFormFieldsMap($row);
            }
//
//            // Modify row data for job_applicant_form_custom
            if ($row->sheet_name === 'job_applicant_form_custom') {
                $this->updateCompletedModule(['candidates', 'job_posts', 'job_post_apply_form', 'job_applications']);
//                $this->updateCompletedModule(['candidates']);
                return $this->jobApplicantFormCustomMap($row);
            }
//
//            // Modify row data for notes
            if ($row->sheet_name === 'notes') {
                $this->updateCompletedModule(['candidates', 'job_posts', 'job_post_apply_form', 'job_applications', 'job_applicant_form']);
                return $this->notesMap($row);
            }
//
//            // Modify row data for events
            if ($row->sheet_name === 'events') {
                $this->updateCompletedModule(['candidates', 'job_posts', 'job_post_apply_form', 'job_applications', 'job_applicant_form', 'notes']);
                return $this->eventsMap($row);
            }
//
//            // Modify row data for email_conversation
            if ($row->sheet_name === 'email_conversation') {
                $this->updateCompletedModule(['candidates', 'job_posts', 'job_post_apply_form', 'job_applications', 'job_applicant_form', 'notes', 'events']);
                return $this->emailConversationMap($row);
            }
//
//            // Modify row data for to do
            if ($row->sheet_name === 'todo') {
                $this->updateCompletedModule(['candidates', 'job_posts', 'job_post_apply_form', 'job_applications', 'notes', 'events', 'email_conversation', 'email_conversation']);
                return $this->todoMap($row);
            }
//
//            // Modify row data for admin_user
            if ($row->sheet_name === 'admin_user') {
                $this->updateCompletedModule(['candidates', 'job_posts', 'job_post_apply_form', 'job_applications', 'notes', 'events', 'email_conversation', 'email_conversation', 'todo']);
                return $this->adminUserMap($row);
            }
//
//            // Modify row data for activity_log
//            if ($row->sheet_name === 'activity_log') {
//                $this->updateCompletedModule(['candidates', 'job_posts', 'job_post_apply_form', 'job_applications', 'notes', 'events', 'email_conversation', 'todo', 'email_conversation', 'todo', 'admin_user']);
//                return $this->activityLogMap($row);
//            }
            return $row->toArray();
        });

        // employee, Working Shift, Leave completed
        $this->updateCompletedModule([
            'candidates',
            'job_posts',
            'job_post_apply_form',
            'job_applications',
            'job_applicant_form',
            'notes',
            'events',
            'email_conversation',
            'todo',
            'admin_user',
//            'activity_log'
        ]);

        // update status completed
        $this->completeExportAndNotify();
        Log::info('Export : completed');
    }
    protected function getSheets(): array {
        $sheets = [];

        //        if (in_array('job_posts', $this->requested_modules)) {
//            $sheets['job_posts'] = $this->JobTypeDataGenerator();
//        }


        if (in_array('candidates', $this->requested_modules)) {
            $sheets['Candidates'] = $this->CandidatesDataGenerator();
        }
        if (in_array('job_posts', $this->requested_modules)) {
            $sheets['Job_Posts'] = $this->JobPostDataGenerator();
        }
        if (in_array('job_post_apply_form', $this->requested_modules)) {
            $sheets['Job_Post_Apply_Form_Section'] = $this->JobPostApplyFormSectionDataGenerator();
            $sheets['Job_Post_Apply_Form_Fields'] = $this->JobPostApplyFormFieldsDataGenerator();
            $sheets['Job_Post_Apply_Form_Custom'] = $this->JobPostApplyFormCustomDataGenerator();
        }
        if (in_array('job_applications', $this->requested_modules)) {
            $sheets['Job_Applications'] = $this->JobApplicationsDataGenerator();
        }
        if (in_array('job_applicant_form', $this->requested_modules)) {
            $sheets['Job_Applicant_Form_Section'] = $this->JobApplicantFormSectionTraitDataGenerator();
            $sheets['Job_Applicant_Form_Fields'] = $this->JobApplicantFormFieldsDataGenerator();
            $sheets['Job_Applicant_Form_Custom'] = $this->JobApplicantFormCustomDataGenerator();
        }
        if (in_array('notes', $this->requested_modules)) {
            $sheets['Notes'] = $this->NotesDataGenerator();
        }
        if (in_array('events', $this->requested_modules)) {
            $sheets['Events'] = $this->EventsDataGenerator();
        }
        if (in_array('email_conversation', $this->requested_modules)) {
            $sheets['Email_Conversation'] = $this->EmailConversationDataGenerator();
        }
        if (in_array('todo', $this->requested_modules)) {
            $sheets['Todos'] = $this->TodoDataGenerator();
        }
        if (in_array('admin_user', $this->requested_modules)) {
            $sheets['Admin_User'] = $this->AdminUserDataGenerator();
        }
//        if (in_array('activity_log', $this->requested_modules)) {
//            $sheets['Activity_log'] = $this->ActivityLogDataGenerator();
//        }

        return $sheets;
    }
}
