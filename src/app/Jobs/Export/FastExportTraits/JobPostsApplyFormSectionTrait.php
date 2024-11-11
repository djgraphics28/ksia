<?php

namespace App\Jobs\Export\FastExportTraits;

use App\Models\App\JobPost\JobPost;

trait JobPostsApplyFormSectionTrait
{
    // Define JobPostApplyFormSection generator function
    public function JobPostApplyFormSectionDataGenerator(): \Generator
    {
        $jobPosts = JobPost::query()
            ->select([
                'job_posts.id',
                'job_posts.slug',
                'job_posts.apply_form_settings',
            ])
            ->cursor();

        if ($jobPosts->isEmpty()) {
            // Yield a row with headers and null values
            yield (object)[
                'slug' => null,
                'title' => null,
                'unique_id' => null,
                'action_edit' => null,
                'action_delete' => null,
                'action_move' => null,
                'action_fixed' => null,
                'sheet_name' => 'job_post_apply_form_sections'
            ];
        } else {
            foreach ($jobPosts as $jobPost) {
                $applyFormSettings = $this->convertToArray($jobPost->apply_form_settings);

                foreach ($applyFormSettings as $setting) {
                    $row = new \stdClass();
                    $row->sheet_name = 'job_post_apply_form_sections';
                    $row->slug = $jobPost->slug;
                    $row->title = $setting['title'];
                    $row->unique_id = $setting['id'];
                    $row->action_edit = $setting['actions']['edit'] ? 'true' : 'false';
                    $row->action_delete = $setting['actions']['delete'] ? 'true' : 'false';
                    $row->action_move = $setting['actions']['move'] ? 'true' : 'false';
                    $row->action_fixed = isset($setting['actions']['fixed']) ? ($setting['actions']['fixed'] ? 'true' : 'false') : null;
                    yield $row;
                }
            }
        }
    }

    public function convertToArray($data)
    {
        if (is_string($data)) {
            return json_decode($data, true, 512, JSON_THROW_ON_ERROR);
        }

        return json_decode(json_encode($data), true, 512, JSON_THROW_ON_ERROR);

    }

    // Define job_post_apply_form section map function
    public function jobPostApplyFormSectionMap($row): array
    {
        return [
            'Job_post_slug' => $row->slug,
            'Title' => $row->title,
            'Unique_id' => $row->unique_id,
            'Action_edit' => $row->action_edit,
            'Action_delete' => $row->action_delete,
            'Action_move' => $row->action_move,
            'Action_fixed' => $row->action_fixed,
        ];
    }

}