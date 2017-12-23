@foreach($posts as $post)

    <div class="post-item">
        <div class="row">
            <div class="col-xl-4 col-md-5 no-some-pad-marg">
                <div class="wrapper-item-image-post">
                    <a href="{{ action('PostsController@show', $post->id) }}">
                        <img class="image-post image-effect" src="{{ asset('storage/' . $post->image) }}"
                             alt="{{ $post->title }}">
                    </a>
                </div>
            </div>
            <div class="col-xl-8 col-md-7 no-some-pad-marg wrapper-post-item-back">
                <div class="wrapper-item-description">
                    <h4 class="post-item-title">

                        @php
                            $title = preg_replace('#' . $searchQuery . '#i', '<font color=red>$0</font>', $post->title);
                        @endphp

                        {!! $title !!}

                    </h4>
                    <p class="post-item-description">

                        @if($post->excerpt && !empty($post->excerpt))

                            @php
                                $excerpt = strip_tags($post->excerpt); $excerpt = substr($excerpt,0,700);
                                $excerpt = preg_replace('#' . $searchQuery . '#i', '<font color=red>$0</font>', $post->excerpt);
                            @endphp

                            {!! $excerpt !!}

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