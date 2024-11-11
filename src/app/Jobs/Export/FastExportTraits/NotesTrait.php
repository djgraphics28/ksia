<?php

namespace App\Jobs\Export\FastExportTraits;

use App\Models\App\Applicant\Note;

trait NotesTrait
{
    // Define JobType generator function
    public function NotesDataGenerator(): \Generator
    {

          $notes = Note::query()
                ->select([
                    'notes.description',
                    'notes.created_at',
                    'applicants.email as applicant_email',
                    'job_applicants.slug as applicant_slug',
                    'job_posts.slug as job_post_slug'
                ])
                ->selectSub(function ($query) {
                    $query->select('email')
                        ->from('users')
                        ->whereColumn('users.id', 'notes.noted_by')
                        ->limit(1);
                }, 'noter_email')
                ->join('job_applicants', 'job_applicants.id', '=', 'notes.job_applicant_id')
                ->join('applicants', 'applicants.id', '=', 'job_applicants.applicant_id')
                ->join('job_posts', 'job_posts.id', '=', 'job_applicants.job_post_id')
                ->cursor();

        $headers = [
            'noter_email' => null,
            'applicant_email' => null,
            'applicant_slug' => null,
            'job_post_slug' => null,
            'description' => null,
            'created_at' => null,
            'sheet_name' => 'notes'
        ];
        // Check if there are any results
        if ($notes->isEmpty()) {
            // Yield a row with headers and null values
            yield (object) $headers;
        } else {
            // Yield actual data
            foreach ($notes as $note) {
                $note->sheet_name = 'notes';
                yield $note;
            }
        }
    }

    // Define JobType map function
    public function notesMap($row): array
    {
        return [
            'User' => $row->noter_email,
            'Candidate' => $row->applicant_email,
            'Job_applicant_slug' => $row->applicant_slug,
            'Job_post_slug' => $row->job_post_slug,
            'Note' => $row->description,
            'Created_at' => $this->convertDateToUTC($row->created_at)
        ];
    }

}