<?php

namespace App\Jobs\Export\FastExportTraits;

use App\Models\App\JobPost\JobPost;

trait JobPostsApplyFormFieldsTrait
{
    // Define JobType generator function
    public function JobPostApplyFormFieldsDataGenerator(): \Generator
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
                'sheet_name' => 'job_post_apply_form_fields'
            ];
        } else {
            foreach ($jobPosts as $jobPost) {
                $applyFormSettings = $this->convertToArray($jobPost->apply_form_settings);

                foreach ($applyFormSettings as $setting) {
                    $row = new \stdClass();
                    $row->sheet_name = 'job_post_apply_form_fields';
                    $row->slug = $jobPost->slug;
                    $row->section_unique_id = $setting['id'];
                    foreach ($setting['items'] as $item) {
                        $row->item_id = $item['id'];
                        foreach ($item['fields'] as $field) {
                            $row->title = $field['title'];
                            $row->type = $field['type'];
                            $row->options = !empty($field['options'])
                                ? implode(", ", array_map('trim', array_filter($field['options'])))
                                : null;
                            $row->required = $field['required'] ? 'true' : 'false';
                            $row->is_visible = $field['is_visible'] ? 'true' : 'false';
                            $row->action_edit = $field['actions']['edit'] ? 'true' : 'false';
                            $row->action_delete = $field['actions']['delete'] ? 'true' : 'false';
                            $row->action_move = $field['actions']['move'] ? 'true' : 'false';

                            yield $row;
                        }

                    }
                }
            }
        }
    }


    // Define JobType map function
    public function jobPostApplyFormFieldsMap($row): array
    {
        return [
            'Job_post_slug' => $row->slug,
            'Section_unique_id' => $row->section_unique_id,
            'Question_key' => $row->item_id,
            'Title' => $row->title,
            'Type' => $row->type,
            'Options' => $row->options,
            'Required' => $row->required,
            'Is_visible' => $row->is_visible,
            'Action_edit' => $row->action_edit,
            'Action_delete' => $row->action_delete,
            'Action_move' => $row->action_move
        ];
    }

}