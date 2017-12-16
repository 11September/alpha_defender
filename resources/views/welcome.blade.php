@extends('master.layoult')

@section('css')

@endsection

@section('content')

    <section class="intro-news">
        <div class="container-fluid container-margin">
            <div class="head-title">
                <div class="num-block"></div>
                <div class="title">НОВИНИ</div>
            </div>
            <div class="row">

                @foreach($posts as $post)

                    <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 news-pad">
                        <div class="news">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 news-1">
                                <a href="{{ action('PostsController@show', $post->id) }}">
                                    <img src="{{ asset('storage/' . $post->image) }}" alt="{{ $post->title }}">
                                </a>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 news-1-desc">
                                <div class="news-title">
                                    <div class="yel-block"></div>
                                    <div>
                                        <h3 class="news-date">
                                            {{ \Carbon\Carbon::parse($post->created_at)->format('d.m.Y')}}
                                        </h3>
                                        <p>
                                            @if($post->excerpt)
                                                @php
                                                    $body = strip_tags($post->excerpt); $body = substr($body,0,130);
                                                @endphp
                                                {{ $body . " ..." }}
                                            @else
                                                @php
                                                    $body = strip_tags($post->body); $body = substr($body,0,130);
                                                @endphp
                                            {{ $body . " ..." }}
                                            @endif
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                @endforeach

            </div>
            <div class="all-news">
                <div><a href="{{ url('posts') }}">ВСІ НОВИНИ</a></div>
            </div>
        </div>
    </section>
    <section class="poslugy">
        <div class="container-fluid nopad">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 nopad">
                <div class="posluga-1 row nomar">
                    <div class="col-xs-5 col-sm-5 col-md-5 col-lg-6">
                        <div class="label-pos">
                            <div class="num-block-pos"></div>
                            <div class="title">ПОСЛУГИ</div>
                        </div>
                        <div class="incasacia">
                            <h2>ІНКАСАЦІЯ ЮРИДИЧНИХ ОСІБ</h2>
                            <ul>
                                <li><span>Інкасація виручки підприємства</span></li>
                                <li><span>Інкасація за вказаним маршрутом</span></li>
                                <li><span>Інкасація ПТКС</span></li>
                                <li><span>Підкріплення готівкою та розмінними монетами</span></li>
                                <li><span>Перевезення цінних паперів та коштовностей</span></li>
                                <li><span>Міжміські перевезення</span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xs-7 col-sm-7 col-md-7 col-lg-6 nopad">
                        <div class="img-fluid">
                            <img src="../images/services.png" alt="">
                        </div>
                    </div>
                </div>
                <div class="posluga-2 row nomar">
                    <div class="col-xs-7 col-sm-7 col-md-7 col-lg-7 nopad">
                        <div class="img-fluid">
                            <img src="../images/incasation.png" alt="">
                        </div>
                    </div>
                    <div class="col-xs-5 col-sm-5 col-md-5 col-lg-5 center">
                        <div class="incasacia-2">
                            <h2 class="grey-font">ІНКАСАЦІЯ ЮРИДИЧНИХ ОСІБ</h2>
                            <ul class="grey-font nomar">
                                <li><span>Інкасація виручки підприємства</span></li>
                                <li><span>Інкасація за вказаним маршрутом</span></li>
                                <li><span>Інкасація ПТКС</span></li>
                                <li><span>Підкріплення готівкою та розмінними монетами</span></li>
                                <li><span>Перевезення цінних паперів та коштовностей</span></li>
                                <li><span>Міжміські перевезення</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="posluga-3 row nomar">
                    <div class="col-xs-5 col-sm-5 col-md-5 col-lg-6 center">
                        <div class="incasacia-3">
                            <h2 class="grey-font">ІНКАСАЦІЯ ЮРИДИЧНИХ ОСІБ</h2>
                            <ul class="grey-font nomar">
                                <li><span>Інкасація виручки підприємства</span></li>
                                <li><span>Інкасація за вказаним маршрутом</span></li>
                                <li><span>Інкасація ПТКС</span></li>
                                <li><span>Підкріплення готівкою та розмінними монетами</span></li>
                                <li><span>Перевезення цінних паперів та коштовностей</span></li>
                                <li><span>Міжміські перевезення</span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xs-7 col-sm-7 col-md-7 col-lg-6 nopad">
                        <div class="img-fluid">
                            <img src="../images/terminal.png" alt="">
                        </div>
                    </div>
                </div>
                <div class="posluga-4 row nomar">
                    <div class="col-xs-7 col-sm-7 col-md-7 col-lg-7 nopad">
                        <div class="img-fluid">
                            <img src="../images/defence.png" alt="">
                        </div>
                    </div>
                    <div class="col-xs-5 col-sm-5 col-md-5 col-lg-5 center">
                        <div class="incasacia-2">
                            <h2 class="grey-font">ІНКАСАЦІЯ ЮРИДИЧНИХ ОСІБ</h2>
                            <ul class="grey-font nomar">
                                <li><span>Інкасація виручки підприємства</span></li>
                                <li><span>Інкасація за вказаним маршрутом</span></li>
                                <li><span>Інкасація ПТКС</span></li>
                                <li><span>Підкріплення готівкою та розмінними монетами</span></li>
                                <li><span>Перевезення цінних паперів та коштовностей</span></li>
                                <li><span>Міжміські перевезення</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="about">
        <div class="container-fluid container-margin">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 row nopad">
                <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
                    <div class="head-title">
                        <div class="num-block"></div>
                        <div class="title">ПРО НАС</div>
                    </div>
                    <div class="about-intro">
                        <p>Обслуговуючий персонал Департаменту інкасації представлений висококваліфікованими
                            працівниками, які пройшли спеціальну підготовку в навчальних закладах Національного Банку
                            України та мають багаторічний досвід роботи з інкасації коштів та перевезення валютних
                            цінностей.</p>
                    </div>
                </div>
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 resp nopad">
                    <div class="about-img-1">
                        <img src="../images/ammo.png" alt="">
                    </div>
                </div>

                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 resp nopad">
                    <div class="about-img-2">
                        <img src="../images/t5.png" alt="">
                    </div>
                </div>
                <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
                    <div class="about-intro">
                        <p>ТОВ «ОК «АЛЬФА-ЗАХИСТ» має власний повноцінний автопарк броньованих оперативних автомобілів
                            марки Фольксваген Т-5, класу ПЗСА-3 ДСТУ 3975-2000, обладнанні сейфами тимчасового
                            зберігання ДСТУ EN 1143-1:2014, обладнаних системою відстеження рухомих об'єктів «Глобус-М»
                            в режимі реального часу за допомогою супутникової навігації GPS, що надає змогу миттєво
                            визначати місцезнаходження автомобіля. Для досягнення найвищого рівня безпеки оперативні
                            автомобілі обладнані засобами відео фіксації як в середині так і зовні автомобіля, тривожної
                            сигналізації, щоб у разі потреби одержати підтримку групи швидкого реагування УПО. Усі
                            цінності, згідно з нормативними вимогами, окрім інкасаторів супроводжуються двома озброєними
                            охоронниками.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

@section('scripts')

@endsection