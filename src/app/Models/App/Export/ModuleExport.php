<?php

namespace App\Models\App\Export;

use App\Helpers\Core\Traits\FileHandler;
use App\Models\App\AppModel;
use App\Models\Core\Traits\CreatedByRelationship;
use App\Models\Core\Traits\StatusRelationship;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Support\Facades\Storage;
use Illuminate\Database\Eloquent\Casts\Attribute;

class ModuleExport extends AppModel
{
    use HasFactory, StatusRelationship, CreatedByRelationship, FileHandler;

    protected $fillable = ['created_by', 'status_id', 'requested_modules', 'completed_modules', 'requested_on', 'completed_on', 'path', 'data'];

    protected $appends = ['progress'];

    protected $casts = [
        'requested_modules' => 'array',
        'completed_modules' => 'array',
        'data' => 'array',
    ];

    protected function fullUrl(): Attribute
    {
        return Attribute::make(
            get: function ($value) {
                $file_system = config('filesystems.default');

                $path = $this->removeStorage($this->path);

                if (in_array($file_system, ['local', 'public'])) {
                    return request()->root() . (Storage::disk($file_system)->url($path));
                }
                return Storage::disk($file_system)->url($path);
            },
        );
    }
    protected function progress(): Attribute
    {
        return Attribute::make(
            get: function ($value) {
                return round(((count($this->completed_modules) / count($this->requested_modules)) * 100), 2);
            },
        );
    }
}
