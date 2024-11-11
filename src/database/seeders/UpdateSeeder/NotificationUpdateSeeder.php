<?php

namespace Database\Seeders\UpdateSeeder;

use App\Models\Core\Auth\Role;
use App\Models\Core\Auth\Type;
use App\Models\Core\Notification\NotificationTemplate;
use App\Models\Core\Setting\NotificationAudience;
use App\Models\Core\Setting\NotificationEvent;
use App\Models\Core\Setting\NotificationSetting;
use App\Models\Core\Status;
use Database\Seeders\Traits\DisableForeignKeys;
use Database\Seeders\Traits\TruncateTable;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Artisan;

class NotificationUpdateSeeder extends Seeder
{
    use TruncateTable, DisableForeignKeys;

    /**
     * Seed the application's database.
     */
    public function run()
    {
        //unguard
        Model::unguard();
        activity()->withoutLogs(function () {
            $this->disableForeignKeys();
            $appTypeId = Type::findByAlias('app')->id;

            $event = NotificationEvent::query()->create([
                'name' => 'export_complete',
                'type_id' => $appTypeId,
            ]);
            $notification_setting = NotificationSetting::query()->create([
                'notification_event_id' => $event->id,
                'notify_by' =>  ['database', 'mail'],
            ]);
            $roles = Role::query()
                ->where('is_admin', 1)
                ->whereHas('type', function (Builder $query) {
                    $query->where('alias', 'app');
                })->get()
                ->pluck('id');
            $notification_setting->audiences()->saveMany([
                new NotificationAudience([
                    'audience_type' => 'roles',
                    'audiences' => $roles
                ])
            ]);
            $template = [
                'system' => 'Export file is ready to download.',
                'subject' => 'Export file is ready to download.',
                'content' => '<p><img src="{company_logo}" style="height: 75px"></p>
<p>
</p><p>
<span style="background-color: var(--form-control-bg) ; color: var(--default-font-color) ;">Hi {receiver_name}</span>
<br></p>
<p>Export file is ready to download. Please navigate to the <a href="{resource_url}" target="_blank">app</a> and download.
<br>
<p></p><p>Thanks &amp; Regards,
</p><p>{company_name}</p>',
            ];

            $mail = NotificationTemplate::query()->create([
                'subject' => $template['subject'],
                'default_content' => $template['content'],
                'custom_content' => null,
                'type' => 'mail'
            ]);
            $database = NotificationTemplate::query()->create([
                'subject' => null,
                'default_content' => $template['system'],
                'custom_content' => null,
                'type' => 'database'
            ]);

            $event->templates()->attach(
                [$mail->id, $database->id]
            );

            //seed another event
            $event2 = NotificationEvent::query()->create([
                'name' => 'export_failed',
                'type_id' => 1,
            ]);
            $notification_setting2 = NotificationSetting::query()->create([
                'notification_event_id' => $event2->id,
                'notify_by' =>  ['database', 'mail'],
            ]);
            $notification_setting2->audiences()->saveMany([
                new NotificationAudience([
                    'audience_type' => 'roles',
                    'audiences' => $roles
                ])
            ]);
            $template2 = [
                'system' => 'Export generation failed.',
                'subject' => 'Export generation failed.',
                'content' => '<p><img src="{company_logo}" style="height: 75px"></p>
<p>
</p><p>
<span style="background-color: var(--form-control-bg) ; color: var(--default-font-color) ;">Hi {receiver_name}</span><br></p>
<p>We are really sorry to inform you that the Export File generation has failed. You can try again <a href="{resource_url}" target="_blank">here</a>.
<br>
<p></p><p>Thanks &amp; Regards,
</p><p>{company_name}</p>',
            ];

            $mail2 = NotificationTemplate::query()->create([
                'subject' => $template2['subject'],
                'default_content' => $template2['content'],
                'custom_content' => null,
                'type' => 'mail'
            ]);
            $database2 = NotificationTemplate::query()->create([
                'subject' => null,
                'default_content' => $template2['system'],
                'custom_content' => null,
                'type' => 'database'
            ]);
            $event2->templates()->attach(
                [$mail2->id, $database2->id]
            );

            $this->enableForeignKeys();
        });
        Model::reguard();
    }
}
