<?php

namespace App\Mail\Tag;

class ExportTag extends Tag
{
    use \App\Notifications\Traits\Tag;

    protected $user;

    protected $salary;

    public function __construct($user, $notifier = null, $receiver = null)
    {
        $this->user = $user;
        $this->notifier = $notifier;
        $this->receiver = $receiver;
        $this->resourceurl = route('exports.view', ['tab' => 'Export']);
    }

    function notification()
    {
        return array_merge([], $this->common());
    }
}