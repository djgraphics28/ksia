<?php
namespace Database\Seeders\UpdateSeeder;

use App\Models\Core\Status;
use Database\Seeders\Traits\DisableForeignKeys;
use Illuminate\Database\Seeder;
class StatusUpdateSeeder extends Seeder
{
    use DisableForeignKeys;
    /**
     * Run the database seeders.
     *
     * @return void
     */
    public function run()
    {
        $this->disableForeignKeys();

        $this->seedNewStatuses();

        $this->enableForeignKeys();
    }

    public function seedNewStatuses(): void
    {
        $this->disableForeignKeys();

        $new_statuses = [
            [
                'name' => 'status_pending',
                'type' => 'export',
                'class' => 'secondary'
            ],
            [
                'name' => 'status_processing',
                'type' => 'export',
                'class' => 'primary'
            ],
            [
                'name' => 'status_rejected',
                'type' => 'export',
                'class' => 'danger'
            ],
            [
                'name' => 'status_completed',
                'type' => 'export',
                'class' => 'success'
            ],
        ];

        $this->enableForeignKeys();
        Status::query()->insert($new_statuses);
    }
}
