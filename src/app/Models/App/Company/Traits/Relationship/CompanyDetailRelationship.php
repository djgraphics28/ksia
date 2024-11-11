<?php


namespace App\Models\App\Company\Traits\Relationship;

use App\Models\App\JobPost\JobPost;

trait CompanyDetailRelationship
{
    public function jobPosts()
    {
        return $this->hasMany(JobPost::class, 'company_detail_id');
    }
    
}