<?php

use App\Http\Controllers\App\Export\ModuleExportController;
use Illuminate\Routing\Router;
use Illuminate\Support\Facades\Route;

Route::group(['prefix' => 'app'], function (Router $router) {
    Route::get('module-exports/{module_export}/download-file',[ModuleExportController::class,'download'])->name('download.export');
    Route::post('module-exports/{module_export}/retry',[ModuleExportController::class,'retry'])->name('retry.export');
    Route::get('module-exports',[ModuleExportController::class,'getModuleExports'])->name('export.module');
    Route::post('module-exports',[ModuleExportController::class,'moduleExports'])->name('module.export');
    Route::get('module-exports/{module_export}',[ModuleExportController::class,'getModuleExportsItem'])->name('module.export.item');
    Route::delete('module-exports/{module_export}',[ModuleExportController::class,'deleteModuleExport'])->name('module_export.delete');
});