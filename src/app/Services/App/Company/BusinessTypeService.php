<?php

namespace App\Services\App\Company;

use App\Models\App\Company\BusinessType;
use App\Services\App\AppService;

class BusinessTypeService extends AppService
{
    public function __construct(BusinessType $businessType)
    {
        $this->model = $businessType;
    }
}