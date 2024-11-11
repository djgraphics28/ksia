<?php

namespace App\Jobs\Export\FastExportTraits;

use App\Models\App\Applicant\JobApplicant;

trait JobApplicantFormFieldsTrait
{
    // Define JobType generator function
    public function JobApplicantFormFieldsDataGenerator(): \Generator
    {
        $applicants = JobApplicant::query()
            ->select([
                'job_applicants.id',
                'job_applicants.slug',
                'job_applicants.apply_form_setting',
            ])
            ->selectSub(function ($query) {
                $query->select('email')
                    ->from('applicants')
                    ->whereColumn('applicants.id', 'job_applicants.applicant_id')
                    ->limit(1);
            }, 'applicant_email')
            ->selectSub(function ($query) {
                $query->select('slug')
                    ->from('job_posts')
                    ->whereColumn('job_posts.id', 'job_applicants.job_post_id')
                    ->limit(1);
            }, 'job_post_slug')
            ->cursor();


//        $null_data = [
//            'applicant_email' => null,
//            'job_post_slug' => null,
//            'slug' => null,
//            'section_unique_id' => null,
//            'item_id' => null,
//            'title' => null,
//            'type' => null,
//            'options' => null,
//            'required' => null,
//            'is_visible' => null,
//            'action_edit' => null,
//            'action_delete' => null,
//            'action_move' => null,
//            'answer' => null,
//            'sheet_name' => 'job_applicant_form_fields'
//
//        ];



            foreach ($applicants as $applicant) {
                $applyFormSettings = $applicant->apply_form_setting;
                if (is_string($applyFormSettings)) {
                    $applicantFormSettings = json_decode($applyFormSettings, true, 512, JSON_THROW_ON_ERROR);

                    if ($applicantFormSettings) {
                        foreach ($applicantFormSettings as $setting) {
                            $row = new \stdClass();
                            $row->sheet_name = 'job_applicant_form_fields';
                            $row->slug = $applicant->slug;
                            $row->applicant_email = $applicant->applicant_email;
                            $row->job_post_slug = $applicant->job_post_slug;
                            $row->section_unique_id = $setting['id'];
                            foreach ($setting['items'] as $item) {
                                $row->item_id = $item['id'];
                                foreach ($item['fields'] as $field) {
                                    $row->title = $field['title'];
                                    $row->type = $field['type'] === 'dropzone' ? 'file' : $field['type'];
                                    $row->options = !empty($field['options'])
                                        ? implode(", ", array_map('trim', array_filter($field['options'])))
                                        : null;
                                    $row->required = $field['required'] ? 'true' : 'false';
                                    $row->is_visible = $field['is_visible'] ? 'true' : 'false';
                                    $row->action_edit = $field['actions']['edit'] ? 'true' : 'false';
                                    $row->action_delete = $field['actions']['delete'] ? 'true' : 'false';
                                    $row->action_move = $field['actions']['move'] ? 'true' : 'false';
                                    if ($field['type'] === 'dropzone') {
                                        $row->answer = $this->fullUrl($applicant->answers()
                                            ->whereNotNull('attachment')
                                            ->orderBy('id')
                                            ->value('attachment'));
                                    } else {
                                        $row->answer = $field['value'] ?? null;
                                    }

                                    yield $row;
                                }

                            }
                        }
                    }

                }
        }
    }


    // Define JobType map function
    public function jobApplicantFormFieldsMap($row): array
    {
        return [
            'Candidate' => $row->applicant_email,
            'Job_post_slug' => $row->job_post_slug,
            'Job_applicant_slug' => $row->slug,
            'Unique_id' => $row->section_unique_id,
            'Question_key' => $row->item_id,
            'Title' => $row->title,
            'Type' => $row->type,
            'Options' => $row->options,
            'Required' => $row->required,
            'Is_visible' => $row->is_visible,
            'Action_edit' => $row->action_edit,
            'Action_delete' => $row->action_delete,
            'Action_move' => $row->action_move,
            'Answer' => $row->answer
        ];
    }

}