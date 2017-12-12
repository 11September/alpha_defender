@extends('master.layoult')

@section('css')

@endsection

@section('content')

    <h1>Contact page</h1>

    {!! NoCaptcha::display(['data-theme' => 'dark']) !!}

@endsection

@section('scripts')

@endsection