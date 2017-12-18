@extends('master.layoult')

@section('css')

@endsection

@section('title')
    {{ $page->title }}
@endsection

@section('description')
    {{ $page->meta_description }}
@endsection

@section('keywords')
    {{ $page->meta_keywords }}
@endsection


@section('content')

    <div id="page">
        <div class="container">
            <div class="content-page">

                @if($page->title)
                    <div>
                        <h3 class="title-page">{{ $page->title }}</h3>
                    </div>
                @endif

                @if($page->image)
                    <div class="image">
                        <img src="{{ asset('storage/' . $page->image) }}"
                             alt="{{ $page->title }}"
                             class="img-fluid">
                    </div>
                @endif

                <div class="content">
                    {!! $page->body !!}
                </div>
            </div>
        </div>
    </div>

@endsection