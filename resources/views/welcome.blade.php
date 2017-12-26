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
                                    <img class="image-effect" src="{{ asset('storage/' . $post->image) }}"
                                         alt="{{ $post->title }}">
                                </a>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 news-1-desc">
                                <div class="news-title">
                                    <div class="yel-block"></div>

                                    <h3 class="news-date">
                                        {{ \Carbon\Carbon::parse($post->created_at)->format('d.m.Y')}}
                                    </h3>
                                    <p>
                                        @if(isset($post->excerpt))
                                            @php
                                                $post->excerpt = mb_strimwidth($post->excerpt,0,140);
                                            @endphp
                                            {{ $post->excerpt . " ..." }}
                                        @else
                                            @php
                                                $post->body = mb_strimwidth($post->body,0,140);
                                            @endphp
                                            {{ $post->body . " ..." }}
                                        @endif
                                    </p>

                                </div>
                            </div>
                        </div>
                    </div>

                @endforeach

            </div>
            <div class="all-news">
                <div><a href="{{ url('posts') }}">ВСІ НОВИНИ</a></div>
            </div>

            <div class="box-shadow">

            </div>
        </div>
    </section>
    <section class="poslugy">
        <div class="container-fluid nopad">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 nopad">


                <div class="posluga-1 row nomar">
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                        <div class="label-pos">
                            <div class="num-block-pos"></div>
                            <div class="title">ПОСЛУГИ</div>
                        </div>
                        <div class="incasacia">
                            <h2>ІНКАСАЦІЯ ЮРИДИЧНИХ ОСІБ</h2>
                            <ul class="list-color-font">
                                <li><span>Інкасація виручки підприємства</span></li>
                                <li><span>Інкасація за вказаним маршрутом</span></li>
                                <li><span>Інкасація ПТКС</span></li>
                                <li><span>Підкріплення готівкою та розмінними монетами</span></li>
                                <li><span>Перевезення цінних паперів та коштовностей</span></li>
                                <li><span>Міжміські перевезення</span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6 hidden-sm-down nopad">
                        <div class="img-fluid">
                            <img src="../images/services.png" alt="">
                        </div>
                    </div>
                </div>


                <div class="posluga-2 row nomar">
                    <div class="hidden-xs-down col-sm-7 col-md-7 col-lg-7 nopad">
                        <div class="img-fluid">
                            <img src="../images/incasation.png" alt="">
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-5 col-md-5 col-lg-5 center">
                        <div class="incasacia-2">
                            <h2 class="grey-font">ІНКАСАЦІЯ ФІЗИЧНИХ ОСІБ</h2>
                            <ul class="grey-font nomar list-color-font">
                                <li><span>Доставка валютних цінностей на вказану адресу</span></li>
                                <li><span>Перевезення коштів з банку в банк</span></li>
                                <li><span>Перевезення  цінних паперів та коштовностей</span></li>
                                <li><span>Міжміські перевезення</span></li>
                            </ul>
                        </div>
                    </div>
                </div>


                <div class="posluga-3 row nomar">
                    <div class="col-xs-12 col-sm-12 col-md-5 col-lg-6 center">
                        <div class="incasacia-3">
                            <h2 class="grey-font">ІНКАСАЦІЯ БАНКІВ</h2>
                            <ul class="grey-font nomar list-color-font">
                                <li><span>Підкріплення філій, відділень, пунктів обміну валют та інкасацію надлишків готівки</span>
                                </li>
                                <li><span>Інкасація платіжних терміналів</span></li>
                                <li><span>Інкасація банкоматів</span></li>
                                <li><span>Міжбанківські перевезення</span></li>
                                <li><span>Міжміські перевезення</span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="hidden-sm-down col-md-7 col-lg-6 nopad">
                        <div class="img-fluid">
                            <img src="../images/terminal.png" alt="">
                        </div>
                    </div>
                </div>
                <div class="posluga-4 row nomar">
                    <div class="hidden-sm-down col-md-7 col-lg-7 nopad">
                        <div class="img-fluid">
                            <img src="../images/defence.png" alt="">
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-5 col-lg-5 center">
                        <div class="incasacia-2">
                            <h2 class="grey-font">ОХОРОННА ДІЯЛЬНІСТЬ</h2>
                            <ul class="grey-font nomar list-color-font">
                                <li><span>Охорона майна - забезпечення схоронності та
                                цілісності визначених власником будівель, споруд,
                                територій, транспортних засобів, валютних цінностей,
                                цінних паперів та іншого рухомого і нерухомого майна.</span></li>
                                <li><span>Охорона фізичних осіб - забезпечення особистої
                                безпеки індивідуально визначеної фізичної особи</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="about">
        <div class="container-fluid container-margin">
            <div class="wrapper-about-top">
                <div class="row nopad">
                    <div class="col-xs-12 col-sm-6 col-md-8 col-lg-9">

                        <div class="head-title">
                            <div class="num-block"></div>
                            <div class="title">ПРО НАС</div>
                        </div>
                        <div class="about-intro">
                            <p>Обслуговуючий персонал Департаменту інкасації представлений висококваліфікованими
                                працівниками, які пройшли спеціальну підготовку в навчальних закладах Національного
                                Банку
                                України та мають багаторічний досвід роботи з інкасації коштів та перевезення валютних
                                цінностей.</p>
                        </div>
                    </div>
                    <div class="hidden-xs-down col-sm-6 col-md-4 col-lg-3 resp nopad">
                        <div class="about-img-1">
                            <img src="../images/ammo.png" alt="">
                        </div>
                    </div>
                </div>
            </div>

            <div class="wrapper-about-bottom">
                <div class="row nopad">
                    <div class="hidden-xs-down col-sm-6 col-md-4 col-lg-3 resp nopad">
                        <div class="about-img-2">
                            <img src="../images/t5.png" alt="">
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-8 col-lg-9">
                        <div class="about-intro">
                            <p>ТОВ «ОК «АЛЬФА-ЗАХИСТ» має власний повноцінний автопарк броньованих оперативних
                                автомобілів
                                марки Фольксваген Т-5, класу ПЗСА-3 ДСТУ 3975-2000, обладнанні сейфами тимчасового
                                зберігання ДСТУ EN 1143-1:2014, обладнаних системою відстеження рухомих об'єктів
                                «Глобус-М»
                                в режимі реального часу за допомогою супутникової навігації GPS, що надає змогу
                                миттєво
                                визначати місцезнаходження автомобіля. Для досягнення найвищого рівня безпеки
                                оперативні
                                автомобілі обладнані засобами відео фіксації як в середині так і зовні автомобіля,
                                тривожної
                                сигналізації, щоб у разі потреби одержати підтримку групи швидкого реагування УПО.
                                Усі
                                цінності, згідно з нормативними вимогами, окрім інкасаторів супроводжуються двома
                                озброєними
                                охоронниками.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

@section('scripts')

@endsection