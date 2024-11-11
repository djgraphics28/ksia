<?php

namespace App\Jobs\Export\FastExportTraits;

use App\Models\App\Applicant\Event;
use App\Models\Core\Auth\User;

trait EventsTrait
{
    // Define JobType generator function
    public function EventsDataGenerator(): \Generator
    {
        $events = Event::query()
            ->select([
                'applicants.email as applicant_email', // Select the email from applicants table
                'job_posts.slug as job_post_slug',
                'job_applicants.slug as applicant_slug',
                'events.start_at',
                'events.end_at',
                'events.created_at',
                'events.location',
                'events.description',
                'users.email as created_by',
            ])
            ->addSelect(['event_type' => function ($query) {
                $query->select('name')
                    ->from('event_types')
                    ->whereColumn('event_types.id', 'events.event_type_id')
                    ->limit(1);
            }])
            ->addSelect(['attendees' => function ($query) {
                $query->selectRaw("GROUP_CONCAT(DISTINCT users.email ORDER BY users.email SEPARATOR ', ') as emails")
                    ->from('users')
                    ->join('hiring_teams', 'users.id', '=', 'hiring_teams.recruiter_id')
                    ->join('attendees', 'hiring_teams.id', '=', 'attendees.hiring_team_id')
                    ->whereColumn('attendees.event_id', 'events.id');
            }])
            ->join('job_applicants', 'job_applicants.id', '=', 'events.job_applicant_id')
            ->join('applicants', 'applicants.id', '=', 'job_applicants.applicant_id')
            ->join('job_posts', 'job_posts.id', '=', 'job_applicants.job_post_id')
            ->leftJoin('activity_log', function ($join) {
                $join->on('activity_log.subject_id', '=', 'events.id')
                    ->where('activity_log.subject_type', '=', Event::class);
            })
            ->leftJoin('users', function ($join) {
                $join->on('users.id', '=', 'activity_log.causer_id')
                    ->where('activity_log.causer_type', '=', User::class);
            })
            ->cursor();

        // Check if there are any results
        if ($events->isEmpty()) {
            // Yield a row with headers and null values
            yield (object)[
                'created_by' => null,
                'applicant_email' => null,
                'job_post_slug' => null,
                'applicant_slug' => null,
                'event_type' => null,
                'location' => null,
                'start_at' => null,
                'end_at' => null,
                'description' => null,
                'attendees' => null,
                'created_at' => null,
                'sheet_name' => 'events'
            ];
        } else {
            // Yield actual data
            foreach ($events as $event) {
                $event->sheet_name = 'events';
                yield $event;
            }
        }
    }


    // Define JobType map function
    public function eventsMap($row): array
    {
        return [
            'User' => $row->created_by,
            'Candidate' => $row->applicant_email,
            'Job_post_slug' => $row->job_post_slug,
            'Job_applicant_slug' => $row->applicant_slug,
            'Event_type' => $row->event_type,
            'Location' => $row->location,
            'Start_at' => $row->start_at,
            'End_at' => $row->end_at,
            'Description' => $row->description,
            'Attendees' => $row->attendees,
            'Created_at' => $this->convertDateToUTC($row->created_at)
        ];
    }

}