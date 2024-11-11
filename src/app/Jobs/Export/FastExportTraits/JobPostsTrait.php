<?php

namespace App\Jobs\Export\FastExportTraits;

use App\Models\App\JobPost\JobPost;
use Carbon\Carbon;
use Illuminate\Support\Facades\Storage;

trait JobPostsTrait
{
    // Define JobType generator function
    public function JobPostDataGenerator(): \Generator
    {
        $jobPosts = JobPost::query()
                ->select([
                    'job_posts.id',
                    'job_posts.name',
                    'job_posts.slug',
                    'job_posts.description',
                    'job_posts.salary',
                    'job_posts.created_at',
                    'job_posts.updated_at',
                    'job_posts.last_submission_date',
                    'job_posts.vacancy_count',
                    'job_posts.stages',
                    'job_posts.job_post_settings',
                    'job_posts.working_arrangement',
                    'files.path as file_path', // Include the path column from the files table
                ])
                ->selectSub(function ($query) {
                    $query->select('name')
                        ->from('statuses')
                        ->whereColumn('statuses.id', 'job_posts.status_id')
                        ->limit(1);
                }, 'status_name')
                ->selectSub(function ($query) {
                    $query->select('email')
                        ->from('users')
                        ->whereColumn('users.id', 'job_posts.posted_by')
                        ->limit(1);
                }, 'created_by_email')
                ->selectSub(function ($query) {
                    $query->select('name')
                        ->from('departments')
                        ->whereColumn('departments.id', 'job_posts.department_id')
                        ->limit(1);
                }, 'department')
                ->selectSub(function ($query) {
                    $query->select('address')
                        ->from('company_locations')
                        ->whereColumn('company_locations.id', 'job_posts.company_location_id')
                        ->limit(1);
                }, 'location')
                ->selectSub(function ($query) {
                    $query->select('name')
                        ->from('job_types')
                        ->whereColumn('job_types.id', 'job_posts.job_type_id');
                }, 'job_type')
                ->selectSub(function ($query) {
                    $query->select('name')
                        ->from('experience_levels')
                        ->whereColumn('experience_levels.id', 'job_posts.experience_level_id')
                        ->limit(1);
                }, 'experience_level')
                ->selectSub(function ($query) {
                    $query->selectRaw("GROUP_CONCAT(users.email SEPARATOR ', ') as emails")
                        ->from('users')
                        ->leftJoin('hiring_teams', 'users.id', '=', 'hiring_teams.recruiter_id')
                        ->whereRaw('hiring_teams.job_post_id = job_posts.id');
                }, 'hiring_teams')
                ->leftJoin('files', function ($join) {
                    $join->on('files.fileable_id', '=', 'job_posts.id')
                        ->where('files.fileable_type', '=', JobPost::class);
                })
                ->cursor();
        // Check if there are any results
        if ($jobPosts->isEmpty()) {
            // Yield a row with headers and null values
            yield (object) [
                'status_name' => null,
                'name' => null,
                'slug' => null,
                'description' => null,
                'job_post_settings' => null,
                'created_by_email' => null,
                'department' => null,
                'vacancy_count' => null,
                'location' => null,
                'last_submission_date' => null,
                'job_type' => null,
                'created_at' => null,
                'salary' => null,
                'working_arrangement' => null,
                'experience_level' => null,
                'stages' => null,
                'hiring_teams' => null,
                'file_path' =>null,
                'sheet_name' => 'job_posts'
            ];
        } else {
            // Yield actual data
            foreach ($jobPosts as $jobPost) {
                $jobPost->sheet_name = 'job_posts';
                yield $jobPost;
            }
        }
    }


    // Define JobPosts map function
    public function jobPostMap($row): array
    {
        return [
            'Status' => $row->status_name ? __t($row->status_name) : null,
            'Title' => $row->name,
            'Slug' => $row->slug,
            'About' => $row->description,
            'Description' => $row->job_post_settings ? $this->generateDescriptionFromJson($row->job_post_settings) : null,
            'Created_by' => $row->created_by_email,
            'Department' => $row->department,
            'No_of_vacancy' => $row->vacancy_count,
            'Location' => $row->location,
            'Last_date_of_apply' => $this->convertDateToUTC($row?->last_submission_date),
            'Job_type' => $row->job_type,
            'Created_at' => $this->convertDateToUTC($row?->created_at),
            'Published_at' => $row->status_name === 'Active' ? $this->convertDateToUTC($row?->updated_at) : $this->convertDateToUTC($row?->created_at),
            'Salary' => $row->salary,
            'Work_arrangement' => $row->working_arrangement,
            'Experience_level' => $row->experience_level,
            'Hiring_stages' => $row->stages,
            'Hiring_teams' => $row->hiring_teams,
            'Thumbnail_image_link' => $this->fullUrl($row?->file_path),
        ];
    }

    private function convertDateToUTC($date) {
        if(isset($date)) {
            return Carbon::parse($date)->format('Y-m-d\TH:i:s.u\Z');
        }
        return null;
    }

    public function generateDescriptionFromJson($jsonObject)
    {
        // Convert the object to JSON string if needed
        if (is_object($jsonObject)) {
            $jsonString = json_encode($jsonObject);
        } else {
            $jsonString = $jsonObject; // Assuming it's already a JSON string
        }

        // Decode JSON string into PHP array
        $data = json_decode($jsonString, true);

        $bodySection = $data['content']['bodySection'];

        // Initialize an empty string to store plain text content
        $plainTextContent = '';

        // Construct plain text for bodySection
        foreach ($bodySection as $section) {
            $heading = strip_tags($section['headings']);
            $description = strip_tags($section['description']);

            $plainTextContent .= 'Heading: ' . $heading . "\n";
            $plainTextContent .= 'Description: ' . $description . "\n\n";
        }

        return $plainTextContent;
    }

//    public function generateDescriptionFromJson($jsonObject)
//    {
//        // Convert the object to JSON string if needed
//        if (is_object($jsonObject)) {
//            $jsonString = json_encode($jsonObject);
//        } else {
//            $jsonString = $jsonObject; // Assuming it's already a JSON string
//        }
//
//        // Decode JSON string into PHP array
//        $data = json_decode($jsonString, true);
//
//        // Extract content parts
////        $title = $data['content']['title'];
////        $subtitle = $data['content']['subtitle'];
////        $details = $data['content']['details'];
//        $bodySection = $data['content']['bodySection'];
//
//        // Extract styles from pageStyle->defaultView into associative array for quick lookup
//        $styles = [];
//        foreach ($data['pageStyle']['defaultView'] as $style) {
//            $styles[$style['key']] = $style;
//        }
//
//        // Initialize an empty string to store HTML content
//        $htmlContent = '';
//
////        // Construct HTML for title with styles
////        $htmlContent .= '<h1 style="' .
////            'font-size: ' . $styles['title']['fontSize'] . 'px;' .
////            'font-weight: ' . $styles['title']['fontWeight'] . ';' .
////            'letter-spacing: ' . $styles['title']['letterSpacing'] . 'px;' .
////            'color: ' . $styles['title']['color'] . ';">' . $title . '</h1>';
////
////        // Construct HTML for subtitle with styles
////        $htmlContent .= '<h2 style="' .
////            'font-size: ' . $styles['sub-title']['fontSize'] . 'px;' .
////            'font-weight: ' . $styles['sub-title']['fontWeight'] . ';' .
////            'letter-spacing: ' . $styles['sub-title']['letterSpacing'] . 'px;' .
////            'color: ' . $styles['sub-title']['color'] . ';">' . $subtitle . '</h2>';
////
////        // Construct HTML for details with styles
////        $htmlContent .= '<p style="' .
////            'font-size: ' . $styles['details']['fontSize'] . 'px;' .
////            'font-weight: ' . $styles['details']['fontWeight'] . ';' .
////            'letter-spacing: ' . $styles['details']['letterSpacing'] . 'px;' .
////            'color: ' . $styles['details']['color'] . ';">' . $details . '</p>';
//
//        // Construct HTML for bodySection with styles
//        foreach ($bodySection as $section) {
//            $htmlContent .= '<h3 style="' .
//                'font-size: ' . $styles['headings']['fontSize'] . 'px;' .
//                'font-weight: ' . $styles['headings']['fontWeight'] . ';' .
//                'letter-spacing: ' . $styles['headings']['letterSpacing'] . 'px;' .
//                'color: ' . $styles['headings']['color'] . ';">' . $section['headings'] . '</h3>';
////            .
////
////            '<p style="' .
////            'font-size: ' . $styles['description']['fontSize'] . 'px;' .
////            'font-weight: ' . $styles['description']['fontWeight'] . ';' .
////            'letter-spacing: ' . $styles['description']['letterSpacing'] . 'px;' .
////            'color: ' . $styles['description']['color'] . ';">' . $section['description'] . '</p>'
//        }
//
//        return $htmlContent;
//    }

    public function fullUrl($path)
    {
       if (is_null($path)){
           return null;
       }
        $disk = Storage::disk(config('filesystems.default'));
        return $disk->exists($path)
            ? $disk->url($path)
            : asset($path);
    }


}