<?php

namespace App\Jobs\Export\FastExportTraits;

use App\Models\App\Applicant\JobApplicant;
use App\Models\App\JobPost\JobType;

trait JobApplicationsTrait
{
    // Define JobType generator function
    public function JobApplicationsDataGenerator(): \Generator
    {
        $applicants = JobApplicant::query()
            ->select([
                'job_applicants.slug',
                'job_applicants.review',
                'job_applicants.disqualification_reason',
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
             ->selectSub(function ($query) {
                 $query->select('name')
                     ->from('job_stages')
                     ->whereColumn('job_stages.id', 'job_applicants.current_stage_id')
                     ->limit(1);
             }, 'current_stage')
            ->selectSub(function ($query) {
                $query->select('name')
                    ->from('statuses')
                    ->whereColumn('statuses.id', 'job_applicants.status_id')
                    ->limit(1);
            }, 'status_name')
            ->cursor();

        // Check if there are any results
        if ($applicants->isEmpty()) {
            // Yield a row with headers and null values
            yield (object) [
                'applicant_email' => null,
                'job_post_slug' => null,
                'current_stage' => null,
                'review' => null,
                'status_name' => null,
                'disqualification_reason' => null,
                'slug' => null,
                'sheet_name' => 'job_applications'
            ];
        } else {
            foreach ($applicants as $applicant) {
                $applicant->sheet_name = 'job_applications';
                yield $applicant;
            }
        }
    }


    // Define JobType map function
    public function jobApplicationMap($row): array
    {
        return [
            'Applicant' => $row->applicant_email,
            'Job_post_slug' => $row->job_post_slug,
            'Hiring_stage' => $row->current_stage,
            'Review' => $row->review,
            'Status' => $row->status_name ? __t($row->status_name) : null,
            'Disqualify_reason' => $row->disqualification_reason,
            'Slug' => $row->slug

        ];
    }

}