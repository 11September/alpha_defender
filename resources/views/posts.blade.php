@extends('master.layoult')

@section('css')

@endsection

@section('content')


    <div id="top-news">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h2 class="title"><span class="num-block"></span> НОВИНИ</h2>
                </div>

                <div class="col-md-12">
                    <a href="#">
                        <img class="main-news-image" src="{{ asset('images/Main news.png') }}" alt="">
                    </a>
                </div>
            </div>
            <div class="row wrapper-top-news-text">
                <div class="col-md-2">
                    <p class="post-date">
                        17.11.2017
                    </p>
                </div>
                <div class="col-md-10">
                    <div class="wrapper-description-post">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequatur facere inventore molestias nemo voluptatibus. Aspernatur assumenda dignissimos labore magnam magni maiores nemo quia? Accusamus adipisci animi beatae, dolores, error est eum excepturi expedita inventore praesentium, ullam voluptatibus. At commodi consequatur cum laboriosam maiores, nesciunt nulla, perspiciatis quam ratione repellat, totam unde. Autem exercitationem fugit maiores perferendis quasi similique. Accusantium consequuntur dolores doloribus enim eum illum inventore, libero, mollitia natus nisi perspiciatis praesentium quidem ratione recusandae reiciendis temporibus totam velit. At delectus eligendi error est eum eveniet illo, nam neque non nostrum odit optio quam quas rem reprehenderit saepe sapiente voluptatum?</p>

                        <div class="position-view-more-top-news">
                            <a class="view-more" href="#">Докладніше...</a>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>


    <div id="news">
        <div class="container">
            <div class="post-item">
                <div class="row">
                    <div class="col-md-4">
                        <div class="wrapper-item-image-post">
                            <a href="#">
                                <img src="{{ asset('images/all-news.png') }}" alt="">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="wrapper-item-description">
                            <h4 class="post-item-title">Lorem ipsum dolor sit amet, consectetur.</h4>
                            <p class="post-item-description">Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                Alias animi asperiores, at, culpa dolore est fugiat illum ipsam minima nam
                                necessitatibus nesciunt omnis perferendis possimus quam quis recusandae sed, tempora
                                voluptatem voluptates? Accusamus architecto asperiores doloribus ea explicabo fugiat
                                inventore magnam molestiae optio? Consequuntur, earum hic nesciunt nihil nisi nobis
                                officia possimus quo recusandae sit. Aliquid autem ex in inventore labore numquam odit
                                pariatur perferendis perspiciatis, repudiandae saepe, sunt suscipit voluptatum? Ab amet
                                dicta distinctio facilis officiis perspiciatis, temporibus voluptatibus. Asperiores
                                commodi culpa debitis, dolorem fugiat maxime nesciunt numquam officiis quas.</p>

                            <div class="wrapper-post-additional">
                                <p class="post-date location-additional-date-block">
                                    17.11.2017
                                </p>
                                <p class="location-additional-view-more">
                                    <a class="view-more" href="#">Докладніше...</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="post-item">
                <div class="row">
                    <div class="col-md-4">
                        <div class="wrapper-item-image-post">
                            <a href="#">
                                <img src="{{ asset('images/all-news.png') }}" alt="">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="wrapper-item-description">
                            <h4 class="post-item-title">Lorem ipsum dolor sit amet, consectetur.</h4>
                            <p class="post-item-description">Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                Alias animi asperiores, at, culpa dolore est fugiat illum ipsam minima nam
                                necessitatibus nesciunt omnis perferendis possimus quam quis recusandae sed, tempora
                                voluptatem voluptates? Accusamus architecto asperiores doloribus ea explicabo fugiat
                                inventore magnam molestiae optio? Consequuntur, earum hic nesciunt nihil nisi nobis
                                officia possimus quo recusandae sit. Aliquid autem ex in inventore labore numquam odit
                                pariatur perferendis perspiciatis, repudiandae saepe, sunt suscipit voluptatum? Ab amet
                                dicta distinctio facilis officiis perspiciatis, temporibus voluptatibus. Asperiores
                                commodi culpa debitis, dolorem fugiat maxime nesciunt numquam officiis quas.</p>

                            <div class="wrapper-post-additional">
                                <p class="post-date location-additional-date-block">
                                    17.11.2017
                                </p>
                                <p class="location-additional-view-more">
                                    <a class="view-more" href="#">Докладніше...</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="post-item">
                <div class="row">
                    <div class="col-md-4">
                        <div class="wrapper-item-image-post">
                            <a href="#">
                                <img src="{{ asset('images/all-news.png') }}" alt="">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="wrapper-item-description">
                            <h4 class="post-item-title">Lorem ipsum dolor sit amet, consectetur.</h4>
                            <p class="post-item-description">Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                Alias animi asperiores, at, culpa dolore est fugiat illum ipsam minima nam
                                necessitatibus nesciunt omnis perferendis possimus quam quis recusandae sed, tempora
                                voluptatem voluptates? Accusamus architecto asperiores doloribus ea explicabo fugiat
                                inventore magnam molestiae optio? Consequuntur, earum hic nesciunt nihil nisi nobis
                                officia possimus quo recusandae sit. Aliquid autem ex in inventore labore numquam odit
                                pariatur perferendis perspiciatis, repudiandae saepe, sunt suscipit voluptatum? Ab amet
                                dicta distinctio facilis officiis perspiciatis, temporibus voluptatibus. Asperiores
                                commodi culpa debitis, dolorem fugiat maxime nesciunt numquam officiis quas.</p>

                            <div class="wrapper-post-additional">
                                <p class="post-date location-additional-date-block">
                                    17.11.2017
                                </p>
                                <p class="location-additional-view-more">
                                    <a class="view-more" href="#">Докладніше...</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="post-item">
                <div class="row">
                    <div class="col-md-4">
                        <div class="wrapper-item-image-post">
                            <a href="#">
                                <img src="{{ asset('images/all-news.png') }}" alt="">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="wrapper-item-description">
                            <h4 class="post-item-title">Lorem ipsum dolor sit amet, consectetur.</h4>
                            <p class="post-item-description">Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                Alias animi asperiores, at, culpa dolore est fugiat illum ipsam minima nam
                                necessitatibus nesciunt omnis perferendis possimus quam quis recusandae sed, tempora
                                voluptatem voluptates? Accusamus architecto asperiores doloribus ea explicabo fugiat
                                inventore magnam molestiae optio? Consequuntur, earum hic nesciunt nihil nisi nobis
                                officia possimus quo recusandae sit. Aliquid autem ex in inventore labore numquam odit
                                pariatur perferendis perspiciatis, repudiandae saepe, sunt suscipit voluptatum? Ab amet
                                dicta distinctio facilis officiis perspiciatis, temporibus voluptatibus. Asperiores
                                commodi culpa debitis, dolorem fugiat maxime nesciunt numquam officiis quas.</p>

                            <div class="wrapper-post-additional">
                                <p class="post-date location-additional-date-block">
                                    17.11.2017
                                </p>
                                <p class="location-additional-view-more">
                                    <a class="view-more" href="#">Докладніше...</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-6 offset-lg-3 py-5">
                    <ul class="pagination">
                        <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item"><a class="page-link" href="#">Next</a></li>
                    </ul>
                </div>
            </div>

        </div>
    </div>


@endsection

@section('scripts')

@endsection