<?php


namespace App\Services\App\Company;


use App\Models\App\Company\CompanyDetail;
use App\Services\App\AppService;

class CompanyDetailService extends AppService
{
    public function __construct(CompanyDetail $companyDetail)
    {
        $this->model = $companyDetail;
    }
}