@extends('master.layoult')

@section('css')

@endsection

@section('content')

    <div id="news">
        <div class="container">

            @if(count($posts) == 0 )
                <div class="wrapper-search-form">
                    <div class="row">
                        <div class="col-md-12">

                            <h4>Ничего не найдено</h4>

                            <p>Извините по вашему запросу ничего не найдено. Попробуйте другие ключевые слова.</p>

                            <form id="search-form" method="post" action="{{ action('PostsController@search') }}">
                                {{ csrf_field() }}

                                <div class="form-group">
                                    <input name="search" type="text" placeholder="Знайти...">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            @endif

            @include('partials.posts-items')

            <div class="row">
                <div class="col-lg-6 offset-lg-3 py-5">

                    {{ $posts->links() }}

                </div>
            </div>

        </div>
    </div>

@endsection

@section('scripts')

@endsection