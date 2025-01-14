<?php

namespace Database\Seeders\App\Notification;

use App\Models\Core\Auth\Role;
use App\Models\Core\Setting\NotificationAudience;
use App\Models\Core\Setting\NotificationChannel;
use App\Models\Core\Setting\NotificationEvent;
use App\Models\Core\Setting\NotificationSetting;
use Database\Seeders\Traits\DisableForeignKeys;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Seeder;

class NotificationSettingsSeeder extends Seeder
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

        $channels = NotificationChannel::query()
            ->where('name', '!=', 'sms')
            ->get()
            ->pluck('name');

        $roles = Role::query()
            ->where('is_admin', 1)
            ->whereHas('type', function (Builder $query) {
                $query->where('alias', 'app');
            })->get()
            ->pluck('id');

        NotificationSetting::query()->truncate();

        NotificationEvent::all()->map(function ($event) use ($channels, $roles) {
            $notification_setting = NotificationSetting::query()->create([
                'notification_event_id' => $event->id,
                'notify_by' => $channels
            ]);

            if (in_array($event->name, $this->onlyAdminEvents())) {
                $notification_setting->audiences()->saveMany([
                    new NotificationAudience([
                        'audience_type' => 'roles',
                        'audiences' => $roles->where('alias', 'admin')->pluck('id')
                    ])
                ]);
            } else {
                $notification_setting->audiences()->saveMany([
                    new NotificationAudience([
                        'audience_type' => 'roles',
                        'audiences' => $roles->pluck('id')
                    ])
                ]);
            }
        });
        $this->enableForeignKeys();
    }

    public function onlyAdminEvents()
    {
        return [
            'export_complete',
            'export_failed',
        ];
    }
}
