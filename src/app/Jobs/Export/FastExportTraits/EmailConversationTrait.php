<?php

namespace App\Jobs\Export\FastExportTraits;

use App\Models\App\JobPost\ApplicationEmail;

trait EmailConversationTrait
{
    // Define JobType generator function
    public function EmailConversationDataGenerator(): \Generator
    {
        $emails = ApplicationEmail::query()
                ->select([
                    'sender',
                    'message_id',
                    'reference_id',
                    'text_html as body',
                ])
                ->addSelect(['user' => function ($query) {
                    $query->select('email')
                        ->from('users')
                        ->whereColumn('users.id', 'application_emails.user_id')
                        ->limit(1);
                }])
                ->addSelect(['candidate' => function ($query) {
                    $query->select('email')
                        ->from('applicants')
                        ->whereColumn('applicants.id', 'application_emails.applicant_id')
                        ->limit(1);
                }])
                ->addSelect(['job_post_slug' => function ($query) {
                    $query->select('slug')
                        ->from('job_posts')
                        ->whereColumn('job_posts.id', 'application_emails.job_post_id')
                        ->limit(1);
                }])
                ->addSelect(['applicant_slug' => function ($query) {
                    $query->select('slug')
                        ->from('job_applicants')
                        ->whereColumn('job_applicants.applicant_id', 'application_emails.applicant_id')
                        ->limit(1);
                }])
                ->cursor();

        // Check if there are any results
        if ($emails->isEmpty()) {
            // Yield a row with headers and null values
            yield (object) [
                'user' => null,
                'candidate' => null,
                'job_post_slug' => null,
                'applicant_slug' => null,
                'sender' => null,
                'message_id' => null,
                'reference_id' => null,
                'body' => null,
                'sheet_name' => 'email_conversation'
            ];
        } else {
            // Yield actual data
            foreach ($emails as $email) {
                $email->sheet_name = 'email_conversation';
                yield $email;
            }
        }
    }


    // Define JobType map function
    public function emailConversationMap($row): array
    {
        return [
            'User' => $row->user,
            'Candidate' => $row->candidate,
            'Job_post_slug' => $row->job_post_slug,
            'Job_applicant_slug' => $row->applicant_slug,
            'Sender' => $row->sender === 'applicant' ? 'candidate' : $row->sender,
            'Message_id' => $row->message_id,
            'Reference_id' => $row->reference_id,
            'Mail_body' => $row->body,
        ];
    }

}