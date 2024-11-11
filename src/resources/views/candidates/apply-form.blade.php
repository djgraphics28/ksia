@extends('layouts.app-candidate')

@section('title', trans('default.candidates', [], app_get_locale()))

@section('sharable-content')
    <meta property="og:url" content="{{$viewLink}}">
    <meta property="og:title" content="{{$response->name}}">
    <meta property="og:description"
          content="{{$response->description ?? config('app.name').' - '.__t('job_point_description')}}">
    <meta property="og:type" content="website">
    <meta property="og:image"
          content="{{ isset( $response->jobPostThumbnail->full_url) ? $response->jobPostThumbnail->full_url : request()->root().config('settings.application.company_logo')}}">
    <meta property="og:image:width" content="1000">
    <meta property="og:image:height" content="500">
@endsection

@section('contents')
    <!-- <candidate-application-form
            :apply-form-data="{{json_encode($response)}}">
    </candidate-application-form> -->

    <candidate-application-form-cus :apply-form-data="{{json_encode($response)}}" />
@endsection