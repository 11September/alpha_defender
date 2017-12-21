@extends('master.layoult')

@section('css')

@endsection

@section('content')

    <div class="page-news">
        <div id="top-news">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="title"><a href="{{ action('PostsController@index') }}"><span
                                        class="num-block"></span>НОВИНИ</a></h2>
                    </div>

                    <div class="col-md-12">
                        <a href="{{ action('PostsController@show', $featured->id) }}">
                            <img class="main-news-image" src="{{ asset('storage/' . $featured->image) }}"
                                 alt="{{ $featured->title }}">
                        </a>
                    </div>
                </div>
                <div class="row wrapper-top-news-text">
                    <div class="col-md-2">
                        <p class="post-date">
                            {{ \Carbon\Carbon::parse($featured->created_at)->format('d.m.Y')}}
                        </p>
                    </div>
                    <div class="col-md-10">
                        <div class="wrapper-description-post">

                            @if($featured->excerpt && !empty($featured->excerpt))
                                <p>{{ $featured->excerpt }}</p>
                            @else
                                @php
                                    $body = strip_tags($featured->body); $body = substr($body,0,1000);
                                @endphp
                                {{ $body . " ..." }}
                            @endif


                            <div class="position-view-more-top-news">
                                <a class="view-more" href="{{ action('PostsController@show', $featured->id) }}">Докладніше...</a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <div id="news">
            <div class="container">

                @include('partials.posts-items')

                <div class="row">
                    <div class="col-lg-6 offset-lg-3 py-5">

                        {{ $posts->links() }}

                    </div>
                </div>

            </div>
        </div>
    </div>

@endsection

@section('scripts')

@endsection