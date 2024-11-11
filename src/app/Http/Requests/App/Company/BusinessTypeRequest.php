<?php


namespace App\Http\Requests\App\Company;


use App\Http\Requests\App\AppRequest;
use App\Models\App\Company\BusinessType;

class BusinessTypeRequest extends AppRequest
{
    public function rules()
    {
        return $this->initRules( new BusinessType());
    }

}