@foreach($posts as $post)

    <div class="post-item">
        <div class="row">
            <div class="col-xl-6 col-md-5">
                <div class="wrapper-item-image-post">
                    <a href="#">
                        <img class="image-post" src="{{ asset('storage/' . $post->image) }}" alt="">
                    </a>
                </div>
            </div>
            <div class="col-xl-6 col-md-7">
                <div class="wrapper-item-description">
                    <h4 class="post-item-title">{{ $post->title }}</h4>
                    <p class="post-item-description">

                        @if($post->excerpt && !empty($post->excerpt))
                            {{ $post->excerpt }}
                        @else
                            @php
                                $body = strip_tags($featured->body); $body = substr($body,0,700);
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