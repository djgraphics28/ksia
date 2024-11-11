<?php

namespace App\Jobs\Export\FastExportTraits;

use App\Models\Core\Auth\User;

trait AdminUserTrait
{
    // Define AdminUserDataGenerator function
    public function AdminUserDataGenerator(): \Generator
    {
        foreach (
            User::query()
                ->select([
                    'users.first_name',
                    'users.last_name',
                    'users.email as admin_email',
                    'roles.name as role_name',
                    'profiles.gender',
                    'profiles.date_of_birth',
                    'profiles.contact',
                    'profiles.address',
                ])
                ->selectSub(function ($query) {
                    $query->select('name')
                        ->from('statuses')
                        ->whereColumn('statuses.id', 'users.status_id')
                        ->limit(1);
                }, 'status_name')
                ->join('role_user', 'users.id', '=', 'role_user.user_id')
                ->join('roles', function ($join) {
                    $join->on('role_user.role_id', '=', 'roles.id')
                        ->where('roles.is_admin', 1);
                })
                ->leftJoin('profiles', 'users.id', '=', 'profiles.user_id')
                ->cursor() as $admin) {
            $admin->sheet_name = 'admin_user';
            yield $admin;
        }
    }


    // Define adminUserMap function
    public function adminUserMap($row): array
    {
        return [
            'Email' => $row->admin_email,
            'First_name' => $row->first_name,
            'Last_name' => $row->last_name,
            'User_status' => $row->status_name ? __t($row->status_name) : null,
            'Gender' => $row->gender,
            'Contact_number' => $row->contact,
            'Address' => $row->address,
            'Date_of_birth' => $row->date_of_birth,
            'Role' => $row->role_name,
        ];
    }

}