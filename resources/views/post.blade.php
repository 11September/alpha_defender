@extends('master.layoult')

@section('css')

@endsection

@section('content')

    <div id="one-post">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h2 class="title"><a href="{{ action('PostsController@index') }}"><span class="num-block"></span>НОВИНИ</a>
                    </h2>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="wrapper-content-one-post">
                        <h4 class="post-single-description">{{ $post->title }}</h4>

                        <div class="post-single-content">
                            {!! $post->body !!}
                        </div>
                    </div>
                </div>
            </div>

            <div class="row wrapper-one-post-additional">
                <div class="col-md-4">
                    <p class="post-date">
                        17.11.2017
                    </p>
                </div>
                <div class="col-md-8">
                    <p class="previous-next">

                        @if($previous && $previous != null)
                            <a class="previous view-more" href="{{ action('PostsController@show', $previous) }}"><< До попередньої статті</a>
                        @else
                            <a class="previous view-more disabled" href="{{ action('PostsController@index') }}" role="button" aria-disabled="true"><< До новин</a>
                        @endif


                        <span class="vertical-separator">|</span>


                        @if($next && $next != null)
                            <a class="previous view-more" href="{{ action('PostsController@show', $next) }}">До наступної статті >></a>
                        @else
                            <a class="previous view-more disabled" href="{{ action('PostsController@index') }}" role="button" aria-disabled="true">До новин >></a>
                        @endif

                    </p>
                </div>
            </div>
        </div>
    </div>

@endsection

@section('scripts')

@endsection