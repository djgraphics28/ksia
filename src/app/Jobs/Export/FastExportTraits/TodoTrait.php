<?php

namespace App\Jobs\Export\FastExportTraits;

use App\Models\App\Recruitment\Todo;
use function PHPUnit\Framework\isEmpty;

trait TodoTrait
{
    // Define JobType generator function
    public function TodoDataGenerator(): \Generator
    {
            $todos =  Todo::query()
                ->select(['name'])
                ->selectSub(function ($query) {
                    $query->select('name')
                        ->from('statuses')
                        ->whereColumn('statuses.id', 'todos.status_id')
                        ->limit(1);
                }, 'status')
                ->selectSub(function ($query) {
                    $query->select('email')
                        ->from('users')
                        ->whereColumn('users.id', 'todos.user_id')
                        ->limit(1);
                }, 'user')
                ->cursor();

        // Check if there are any results
        if ($todos->isEmpty()) {
            // Yield a row with headers and null values
            yield (object) [
                'user' => null,
                'status' => null,
                'name' => null,
                'sheet_name' => 'todo'
            ];
        } else {
            // Yield actual data
            foreach ($todos as $todo) {
                $todo->sheet_name = 'todo';
                yield $todo;
            }
        }

    }


    // Define JobType map function
    public function todoMap($row): array
    {
        return [
            'User' => $row->user,
            'Status' => $row->status,
            'Label' => $row->name
        ];

    }

}