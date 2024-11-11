<?php

namespace App\Jobs\Export\FastExportTraits;

use App\Models\App\Applicant\JobApplicant;
use Illuminate\Support\Facades\Log;

trait JobApplicantFormSectionTrait
{
    // Define JobType generator function
    public function JobApplicantFormSectionTraitDataGenerator(): \Generator
    {
        $applicants = JobApplicant::query()
            ->select([
                'job_applicants.slug',
                'job_applicants.apply_form_setting',
            ])
            ->selectSub(function ($query) {
                $query->select('email')
                    ->from('applicants')
                    ->whereColumn('applicants.id', 'job_applicants.applicant_id')
                    ->limit(1);
            }, 'applicant_email')
            ->selectSub(function ($query) {
                $query->select('slug')
                    ->from('job_posts')
                    ->whereColumn('job_posts.id', 'job_applicants.job_post_id')
                    ->limit(1);
            }, 'job_post_slug')
            ->cursor();

//        $null_data = [
//            'applicant_email' => null,
//            'job_post_slug' => null,
//            'slug' => null,
//            'title' => null,
//            'unique_id' => null,
//            'action_edit' => null,
//            'action_delete' => null,
//            'action_move' => null,
//            'action_fixed' => null,
//            'sheet_name' => 'job_applicant_form_sections'
//
//        ];

            foreach ($applicants as $applicant) {
                $applyFormSettings = $applicant->apply_form_setting;
                if (is_string($applyFormSettings)) {
                    $applicantFormSettings = json_decode($applyFormSettings, true, 512, JSON_THROW_ON_ERROR);

                    if ($applicantFormSettings) {
                        foreach ($applicantFormSettings as $setting) {
                            $row = new \stdClass();
                            $row->sheet_name = 'job_applicant_form_sections';
                            $row->slug = $applicant->slug;
                            $row->applicant_email = $applicant->applicant_email;
                            $row->job_post_slug = $applicant->job_post_slug;
                            $row->title = $setting['title'];
                            $row->unique_id = $setting['id'];
                            $row->action_edit = $setting['actions']['edit'] ? 'true' : 'false';
                            $row->action_delete = $setting['actions']['delete'] ? 'true' : 'false';
                            $row->action_move = $setting['actions']['move'] ? 'true' : 'false';
                            $row->action_fixed = isset($setting['actions']['fixed']) ? ($setting['actions']['fixed'] ? 'true' : 'false') : null;
                            yield $row;
                        }
                    }

                }
        }
    }


    // Define JobType map function
    public function jobApplicantFormSectionMap($row): array
    {
        return [
            'Candidate' => $row->applicant_email,
            'Job_post_slug' => $row->job_post_slug,
            'Job_applicant_slug' => $row->slug,
            'Title' => $row->title,
            'Unique_id' => $row->unique_id,
            'Action_edit' => $row->action_edit,
            'Action_delete' => $row->action_delete,
            'Action_move' => $row->action_move,
            'Action_fixed' => $row->action_fixed
        ];
    }

}