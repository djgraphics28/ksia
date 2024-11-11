<?php
namespace Database\Seeders\UpdateSeeder;

use App\Models\Core\Auth\Permission;
use App\Models\Core\Auth\Type;
use Database\Seeders\Traits\DisableForeignKeys;
use Illuminate\Database\Seeder;
class RolePermissionUpdateSeeder extends Seeder
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

        $this->seedNewPermissions();

        $this->enableForeignKeys();
    }

    public function seedNewPermissions(): void
    {
        $this->disableForeignKeys();
        $appId = Type::findByAlias('app')->id;

        $new_permissions = [
            [
                'name' => 'view_all_export',
                'type_id' => $appId,
                'group_name' => 'settings'
            ],
        ];

        $this->enableForeignKeys();
        Permission::query()->insert($new_permissions);
    }
}
