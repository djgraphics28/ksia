<?php

namespace App\Http\Controllers\App\Export;

use App\Exceptions\GeneralException;
use App\Http\Controllers\Controller;
use App\Jobs\Export\FastExportJob;
use App\Models\App\Export\ModuleExport;
use App\Repositories\Core\Status\StatusRepository;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class ModuleExportController extends Controller
{
    public function getModuleExports()
    {
        return ModuleExport::query()
            ->select(['id', 'created_by', 'status_id', 'requested_modules', 'completed_modules', 'requested_on', 'completed_on', 'data'])
            ->with([
                'status:id,name,class',
                'createdBy:id,first_name,last_name',
                'createdBy.profilePicture:id,fileable_type,fileable_id,path',
            ])
            ->where('created_by', auth()->id())
            ->orderBy('created_at', 'desc')
            ->paginate(request('per_page', '5'));
    }

    public function download(ModuleExport $module_export)
    {
        if (auth()->id() != $module_export->created_by) {
            throw new GeneralException(__t('action_not_allowed'));
        }
        try {
            return Storage::disk('public')->download($module_export->path);
        } catch (\Exception $exception) {
            throw new GeneralException(__t('resource_not_found'), 404);
        }
    }

    public function retry(ModuleExport $module_export)
    {
        if (auth()->id() != $module_export->created_by) {
            throw new GeneralException(__t('action_not_allowed'));
        }
        $sheets = $module_export->requested_modules;
        $file_name = $module_export->path;

        // create module export
        $module_export->update([
            'status_id' => resolve(StatusRepository::class)->exportPending(),
            'requested_modules' => $sheets,
            'completed_modules' => [],
            'requested_on' => now(),
            'completed_on' => null,
            'data' => [],
        ]);

        FastExportJob::dispatch("$file_name", $sheets, $module_export->id, request('timeZone', timezone()));

        return response()->json([
            'message' => __t('export_file_in_progress'),
        ]);
    }

    public function getModuleExportsItem(ModuleExport $module_export)
    {
        return $module_export->load([
            'status:id,name,class',
            'createdBy:id,first_name,last_name',
            'createdBy.profilePicture:id,fileable_type,fileable_id,path',
        ]);
    }

    public function deleteModuleExport(ModuleExport $module_export)
    {
        try {
            Storage::disk('public')->delete($module_export->path);
            $module_export->delete();
        } catch (\Exception $exception) {
            throw new GeneralException($exception->getMessage());
        }
        return deleted_responses('export_file');
    }

    public function moduleExports(Request $request)
    {
        $request->validate([
            'fields' => ['required', 'array', 'min:1'],
            'fields.*' => [
                'required',
                'in:all_data,candidates,job_posts,job_post_apply_form,job_applications,job_applicant_form,notes,events,email_conversation,todo,admin_user,activity_log',
            ],
        ]);

        [$sheets, $file_name] = $this->getSheetsAndFilename($request);

        // create module export
        $module_export = ModuleExport::query()->create([
            'created_by' => auth()->id(),
            'status_id' => resolve(StatusRepository::class)->exportPending(),
            'requested_modules' => $sheets,
            'completed_modules' => [],
            'requested_on' => now(),
            'completed_on' => null,
            'path' => "/export/$file_name",
            'data' => [],
        ]);

        FastExportJob::dispatch("/export/$file_name", $sheets, $module_export->id, request('timeZone', timezone()));

        return response()->json([
            'message' => __t('export_file_in_progress'),
        ]);
    }

    public function getSheetsAndFilename(Request $request): array
    {
        $sheets = [];
        $time = now(\request('timeZone', timezone()));

        if (in_array('all_data', $request->fields)) {
            $sheets = [
                'candidates',
                'job_posts',
                'job_post_apply_form',
                'job_applications',
                'job_applicant_form',
                'notes',
                'events',
                'email_conversation',
                'todo',
                'admin_user',
//                'activity_log',
            ];
            $file_name = "all_data_{$time->format('Y-m-d_H-i-s')}.xlsx";
            return [$sheets, $file_name];
        }


        if (in_array('candidates', $request->fields)) {
            $sheets[] = 'candidates';
        }
        if (in_array('job_posts', $request->fields)) {
            $sheets[] = 'job_posts';
        }
        if (in_array('job_post_apply_form', $request->fields)) {
            $sheets[] = 'job_post_apply_form';
        }
        if (in_array('job_applications', $request->fields)) {
            $sheets[] = 'job_applications';
        }
        if (in_array('job_applicant_form', $request->fields)) {
            $sheets[] = 'job_applicant_form';
        }
        if (in_array('notes', $request->fields)) {
            $sheets[] = 'notes';
        }
        if (in_array('events', $request->fields)) {
            $sheets[] = 'events';
        }
        if (in_array('email_conversation', $request->fields)) {
            $sheets[] = 'email_conversation';
        }
        if (in_array('todo', $request->fields)) {
            $sheets[] = 'todo';
        }
        if (in_array('admin_user', $request->fields)) {
            $sheets[] = 'admin_user';
        }
//        if (in_array('activity_log', $request->fields)) {
//            $sheets[] = 'activity_log';
//        }
        $file_name = implode('_', $sheets) . '_' . $time->format('Y-m-d_H-i-s') . '.xlsx';

        return [$sheets, $file_name];
    }
}
