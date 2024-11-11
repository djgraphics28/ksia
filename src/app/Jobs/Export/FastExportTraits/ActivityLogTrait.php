<?php

namespace App\Jobs\Export\FastExportTraits;

use App\Models\App\Applicant\JobApplicant;
use App\Models\Core\Auth\User;
use App\Models\Core\Log\ActivityLog;

trait ActivityLogTrait
{
    // Define JobType generator function
    public function ActivityLogDataGenerator(): \Generator
    {
        foreach (
            ActivityLog::query()
                ->select([
                    'activity_log.id',
                    'activity_log.description as note',
                    'activity_log.created_at',
                    'job_applicants.slug as job_applicant_slug',
                    'job_posts.slug as job_post_slug',
                    'applicants.email as applicant_email',
                    'users.email as causer_email'
                ])
                ->leftJoin('job_applicants', function ($join) {
                    $join->on('activity_log.subject_id', '=', 'job_applicants.id')
                        ->where('activity_log.subject_type', '=', JobApplicant::class);
                })
                ->leftJoin('applicants', 'job_applicants.applicant_id', '=', 'applicants.id')
                ->leftJoin('job_posts', 'job_applicants.job_post_id', '=', 'job_posts.id')
                ->leftJoin('users', function ($join) {
                    $join->on('activity_log.causer_id', '=', 'users.id')
                        ->where('activity_log.causer_type', '=', User::class);
                })
                ->cursor() as $leave) {
            $leave->sheet_name = 'job_type';
            yield $leave;
        }
    }


    // Define JobType map function
    public function activityLogMap($row): array
    {
        return [
            'Name' => $row->name,
            'Calculate_allowance_by' => 'no_of_days',
        ];
    }

}