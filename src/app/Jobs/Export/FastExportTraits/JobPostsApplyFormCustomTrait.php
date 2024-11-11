<?php

namespace App\Jobs\Export\FastExportTraits;

use App\Models\App\JobPost\JobPost;

trait JobPostsApplyFormCustomTrait
{
    // Define JobType generator function
    public function JobPostApplyFormCustomDataGenerator(): \Generator
    {
        $jobPosts = JobPost::query()
            ->select([
                'job_posts.id',
                'job_posts.slug',
                'job_posts.apply_form_settings',
            ])
            ->cursor();

        // Check if there are any results
        if ($jobPosts->isEmpty()) {
            // Yield a row with headers and null values
            yield (object)[
                'slug' => null,
                'section_unique_id' => null,
                'item_id' => null,
                'title' => null,
                'type' => null,
                'options' => null,
                'required' => null,
                'is_visible' => null,
                'action_edit' => null,
                'action_delete' => null,
                'action_move' => null,
                'sheet_name' => 'job_post_apply_form_custom'
            ];
        } else {
            foreach ($jobPosts as $jobPost) {

                $applyFormSettings = $this->convertToArray($jobPost->apply_form_settings);

                foreach ($applyFormSettings as $setting) {
                    $sheetName = 'job_post_apply_form_custom';
                    $slug = $jobPost->slug;
                    $sectionUniqueId = $setting['id'];

                    foreach ($setting['items'] as $item) {
                        foreach ($item['fields'] as $field) {
                            if ($field['type'] == 'custom-form') {
                                foreach ($field['fields'] as $i) {
                                    $row = new \stdClass();
                                    $row->sheet_name = $sheetName;
                                    $row->slug = $slug;
                                    $row->section_unique_id = $sectionUniqueId;
                                    $row->item_id = $item['id'];
                                    $row->required = $i['required'] ? 'true' : 'false';
                                    $row->is_visible = $field['is_visible'] ? 'true' : 'false';
                                    $row->action_edit = $field['actions']['edit'] ? 'true' : 'false';
                                    $row->action_delete = $field['actions']['delete'] ? 'true' : 'false';
                                    $row->action_move = $field['actions']['move'] ? 'true' : 'false';
                                    $row->parent_type = $field['type'];
                                    $row->title = $i['title'];
                                    $row->type = $i['type'];
                                    $row->options = !empty($i['options'])
                                        ? implode(", ", array_map('trim', array_filter($i['options'])))
                                        : null;
                                    yield $row;
                                }
                            }
                        }
                    }
                }
            }
        }
    }


    // Define JobType map function
    public function jobPostApplyFormCustomMap($row): array
    {
        return [
            'Job_post_slug' => $row->slug,
            'Section_unique_id' => $row->section_unique_id,
            'Question_key' => $row->item_id,
            'Title' => $row->title,
            'Type' => $row->type,
            'Options' => $row->options,
            'Required' => (string)$row->required,
            'is_visible' => $row->is_visible,
            'Action_edit' => $row->action_edit,
            'Action_delete' => $row->action_delete,
            'Action_move' => $row->action_move
        ];
    }

}