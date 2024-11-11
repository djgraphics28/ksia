<?php

namespace App\Jobs\Export\FastExportTraits;

use App\Models\App\JobPost\JobType;

trait JobTypeTrait
{
    // Define JobType generator function
    public function JobTypeDataGenerator(): \Generator
    {
        foreach (
            JobType::query()
                ->select(['name'])
                ->cursor() as $leave) {
            $leave->sheet_name = 'job_type';
            yield $leave;
        }
    }


    // Define JobType map function
    public function jobTypeMap($row): array
    {
        return [
            'Name' => $row->name,
            'Calculate_allowance_by' => 'no_of_days',
        ];
    }

}