<?php

namespace App\Notifications\App\Export;

use App\Mail\Tag\ExportTag;
use App\Notifications\App\Helper\CommonParser;
use App\Notifications\BaseNotification;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;

class ExportFailedNotification extends BaseNotification implements ShouldQueue
{
    use Queueable;
    use CommonParser;

    public function __construct($templates, $via)
    {
        $this->templates = $templates;
        $this->via = $via;
        $this->auth = auth()->user();
        $this->tag =  ExportTag::class;
        parent::__construct();
    }

    public function parseNotification()
    {
        $this->databaseNotificationUrl = route('exports.view', ['tab' => 'Export']);

        $this->mailView = 'notification.template';

        $this->mailSubject = optional($this->template()->mail())->parseSubject([

        ]);

        $this->databaseNotificationContent = optional($this->template()->database())->parse([

        ]);
    }

    public function tagParams($notifiable)
    {
        return [
            $this->model,
            $this->auth,
            $notifiable,
        ];
    }
}

