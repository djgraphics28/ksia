<?php


namespace Database\Seeders\App\JobPost;


use App\Models\App\JobPost\JobType;
use Database\Seeders\Traits\DisableForeignKeys;
use Illuminate\Database\Seeder;

class JobTypeSeeder extends Seeder
{
    use DisableForeignKeys;
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $this->disableForeignKeys();
        JobType::query()->truncate();
        $jobTypes = [
            [
                'name' => 'Full Time',
                'brief' => 'This job is for specific Time Range',
            ],
            [
                'name' => 'Part Time',
                'brief' => '',
            ],
            [
                'name' => 'Contractual',
                'brief' => '',
            ]
        ];

        JobType::query()->insert($jobTypes);

        $this->enableForeignKeys();

    }

}