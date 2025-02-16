<?php

namespace App\Models\Core;

use App\Filters\FilterBuilder;
use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\LogOptions;
use Spatie\Activitylog\Traits\LogsActivity;

class BaseModel extends Model
{
    use LogsActivity;
    protected static $logAttributes = [];

    public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults()
            ->logOnlyDirty()
            ->logOnly(self::$logAttributes);
    }
    public function createdRules()
    {
        return [
            //
        ];
    }

    public function updatedRules()
    {
        return $this->createdRules();
    }

    public function scopeFilters($query, FilterBuilder $filter)
    {
        return $filter->apply($query);
    }

}
