<?php

namespace App\Jobs\Export\FastExportTraits;

use App\Models\App\Applicant\Applicant;
use Carbon\Carbon;

trait CandidatesTrait
{
    // Define JobType generator function
    public function CandidatesDataGenerator(): \Generator
    {
        $applicants = Applicant::query()
            ->select(['email', 'first_name', 'last_name', 'gender', 'phone', 'date_of_birth', 'created_at'])
            ->cursor();

        // Check if there are any results
        if ($applicants->isEmpty()) {
            // Yield a row with headers and null values
            yield (object)[
                'email' => null,
                'first_name' => null,
                'last_name' => null,
                'gender' => null,
                'phone' => null,
                'date_of_birth' => null,
                'created_at' => null,
                'sheet_name' => 'candidates'
            ];
        } else {
            foreach ($applicants as $applicant) {
                $applicant->sheet_name = 'candidates';
                yield $applicant;
            }
        }
    }


    // Define JobType map function
    public function candidateMap($row): array
    {
        return [
            'Email' => $row->email,
            'First_name' => $row->first_name,
            'Last_name' => $row->last_name,
            'Gender' => $row->gender,
            'Contact_number' => $row->phone,
            'Date_of_Brith' => $this->formatDate($row->date_of_birth, 'Y-m-d'),
            'Created_at' => $this->getCandidateCreatedDate($row),
        ];
    }

    private function getCandidateCreatedDate($applicant)
    {
        if (isset($applicant->created_at)) {
            return Carbon::parse($applicant->created_at)->format('Y-m-d\TH:i:s.u\Z');
        }
        return null;
    }

    private function formatDate($date, $format = 'Y-m-d\TH:i:s.u\Z')
    {
        if (isset($date)) {
            return Carbon::parse($date)->format($format);
        }
        return null;
    }

}