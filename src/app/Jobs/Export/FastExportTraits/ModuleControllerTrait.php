<?php

namespace App\Jobs\Export\FastExportTraits;

use App\Models\App\Export\ModuleExport;
use App\Notifications\App\Export\ExportCompleteNotification;
use App\Notifications\App\Export\ExportFailedNotification;
use App\Repositories\Core\Status\StatusRepository;
use Illuminate\Support\Facades\Log;

trait ModuleControllerTrait
{
    protected array $requested_modules = [];
    protected array $completed_modules = [];
    protected int|null $module_export_id;
    // mapping functions
    protected function updateCompletedModule($modules = []) {
        foreach ($modules as $module) {
            if(!in_array($module, $this->requested_modules)) continue;
            if(in_array($module, $this->completed_modules)) continue;

            $this->completed_modules = array_values(array_unique(array_merge($this->completed_modules, [$module])));
            Log::info('Export : completed module - ' . $module);

            if($this?->module_export_id) {
                $module_export = ModuleExport::query()->find($this->module_export_id);
                if($module_export) {
                    $completed_modules = array_values(array_unique(array_merge($module_export->completed_modules, [$module])));
                    $module_export->update([
                        'completed_modules' => $completed_modules,
                    ]);
                }
            }
        }
    }
    protected function rejectExportAndNotify($data = []) {
        if($this->module_export_id) {
            $module_export = ModuleExport::query()->find($this->module_export_id);
            if($module_export) {
                // update status rejected
                $module_export->update([
                    'status_id' => resolve(StatusRepository::class)->exportRejected(),
                    'data' => $data,
                ]);
                // notify user failed
                notify()
                    ->on('export_failed')
                    ->mergeAudiences($module_export->created_by)
                    ->send(ExportFailedNotification::class);
            }
        }
    }
    protected function completeExportAndNotify($data = []) {
        if($this->module_export_id) {
            $module_export = ModuleExport::query()->find($this->module_export_id);
            if($module_export) {
                $module_export->update([
                    'status_id' => resolve(StatusRepository::class)->exportCompleted(),
                    'completed_on' => now(),
                    'data' => $data,
                ]);
                // notify user
                notify()
                    ->on('export_complete')
                    ->mergeAudiences($module_export->created_by)
                    ->send(ExportCompleteNotification::class);
            }
        }
    }
    protected function processingExport() {
        if($this?->module_export_id) {
            $module_export = ModuleExport::query()->find($this->module_export_id);
            if($module_export) {
                $module_export->update([
                    'status_id' => resolve(StatusRepository::class)->exportProcessing(),
                ]);
            }
        }
    }
}