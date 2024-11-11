@extends('layouts.app')

@section('title', trans('default.import_export', [], app_get_locale()))

@section('contents')
    <import-export-layout></import-export-layout>
@endsection

