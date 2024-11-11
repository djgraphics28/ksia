<?php

namespace App\Models\App\Company;

use App\Models\App\AppModel;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class CompanyDetail extends AppModel
{
    use HasFactory;

    protected $fillable = ['name', 'url', 'about'];

    protected $casts = [];
}
