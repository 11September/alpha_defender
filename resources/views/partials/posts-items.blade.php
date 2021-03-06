@foreach($posts as $post)

    <div class="post-item">
        <div class="row">
            <div class="col-xl-5 col-md-6 no-some-pad-marg">
                <div class="wrapper-item-image-post">
                    <a href="{{ action('PostsController@show', $post->id) }}">
                        <img class="image-post image-effect" src="{{ asset('storage/' . $post->image) }}" alt="{{ $post->title }}">
                    </a>
                </div>
            </div>
            <div class="col-xl-6 col-md-6 no-some-pad-marg wrapper-post-item-back">
                <div class="wrapper-item-description">
                    <h4 class="post-item-title">{{ $post->title }}</h4>
                    <p class="post-item-description">

                        @if($post->excerpt && !empty($post->excerpt))
                            {{ $post->excerpt }}
                        @else
                            @php
                                $body = strip_tags($post->body); $body = substr($body,0,700);
                            @endphp
                            {{ $body . " ..." }}
                        @endif

                    </p>

                    <div class="wrapper-post-additional">
                        <p class="post-date location-additional-date-block">
                            {{ \Carbon\Carbon::parse($post->created_at)->format('d.m.Y')}}
                        </p>
                        <p class="location-additional-view-more">
                            <a class="view-more"
                               href="{{ action('PostsController@show', $post->id) }}">Докладніше...</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endforeach