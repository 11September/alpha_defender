@extends('master.layoult')

@section('css')

@endsection

@section('content')

    <div id="news margin">
        <div class="container">

            @if(count($posts) == 0 )
                <div class="wrapper-search-form">
                    <div class="row">
                        <div class="col-md-12">

                            <h4>Нічого не знайдено</h4>

                            <p>Вибачте за вашим запитом нічого не знайдено. Спробуйте інші ключові слова.</p>

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

            @include('partials.posts-items-search')

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