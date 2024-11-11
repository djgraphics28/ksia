<?php

namespace Database\Seeders;

use Database\Seeders\Traits\DisableForeignKeys;
use Database\Seeders\UpdateSeeder\NotificationUpdateSeeder;
use Database\Seeders\UpdateSeeder\RolePermissionUpdateSeeder;
use Database\Seeders\UpdateSeeder\StatusUpdateSeeder;
use Illuminate\Database\Seeder;

class AppVersionUpdateSeeder extends Seeder
{
    use DisableForeignKeys;

    /**
     * Run the database seeders.
     *
     * @return void
     */
    public function run()
    {
//        $this->call(StatusUpdateSeeder::class);
//        $this->call(NotificationUpdateSeeder::class);
//        $this->call(RolePermissionUpdateSeeder::class);
    }
}
