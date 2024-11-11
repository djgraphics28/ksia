<?php

namespace App\Services\App\JobPost;

use App\Models\App\JobPost\JobApplicationSetting;
use App\Services\App\AppService;

class JobApplicationSettingService extends AppService
{
    public function __construct(JobApplicationSetting $setting)
    {
        $this->model = $setting;
    }
}