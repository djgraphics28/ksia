<?php


namespace App\Models\App\Applicant\Traits\Relationship;

use App\Models\App\Applicant\JobApplicant;
use App\Models\Core\Auth\User;

trait NoteRelationship
{
    public function jobApplicant()
    {
        return $this->belongsTo(JobApplicant::class, 'job_applicant_id');
    }

    public function notedBy()
    {
        return $this->belongsTo(User::class, 'noted_by');
    }
}