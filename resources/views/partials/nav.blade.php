<nav class="main-navigation tablet-none" id="toper">
    <div class="green-line"></div>

    <div class="yellow-line">
        <p>ТОВ «ОК»АЛЬФА-ЗАХИСТ» пропонує скористатися послугами з інкасації коштів та перевезення валютних цінностей у
            зручний для Вас час.</p>
    </div>

    <div class="socials-search">
        <div class="socials-icons">

            @if(setting('site.youtube'))
                <a href="{{ setting('site.youtube') }}" class="social-item odd"><i class="fa fa-youtube"
                                                                                   aria-hidden="true"></i></a>
            @endif

            @if(setting('site.facebook'))
                <a href="{{ setting('site.facebook') }}" class="social-item"><i class="fa fa-facebook"
                                                                                aria-hidden="true"></i></a>
            @endif

            @if(setting('site.twitter'))
                <a href="{{ setting('site.twitter') }}" class="social-item odd"><i class="fa fa-twitter"
                                                                                   aria-hidden="true"></i></a>
            @endif

            @if(setting('site.rrs'))
                <a href="{{ setting('site.rrs') }}" class="social-item"><i class="fa fa-rss"
                                                                           aria-hidden="true"></i></a>
            @endif

        </div>
        <div class="search-body">
            <span class="search-field">
                <form method="post" action="{{ action('PostsController@search') }}">
                     {{ csrf_field() }}
                    <input name="search" type="text" placeholder="Знайти...">
                    <button class="search-btn" type="submit" href=""><i class="fa fa-search"
                                                                        aria-hidden="true"></i></button>
                </form>
                
            </span>
        </div>
    </div>

    <ul class="menu-list">
        <li class="menu-list__item {{ Request::is('page-about') ? 'active' : '' }}">
            <a class="{{ Request::is('page-about') ? 'active' : '' }}" href="{{ url('page-about') }}">ПРО НАС</a>
        </li>
        <li class="menu-list__item {{ Request::is('posts') ? 'active' : '' }}">
            <a class="{{ Request::is('posts') ? 'active' : '' }}" href="{{ url('posts') }}">НОВИНИ</a>
        </li>
        <li class="logo menu-list__item">
            <a href="{{ url('/') }}" class="no-link"><img src="{{ asset('images/logo.png') }}" alt=""></a>
        </li>
        <li class="menu-list__item third {{ Request::is('contacts') ? 'active' : '' }}">
            <a class="{{ Request::is('contacts') ? 'active' : '' }}" href="{{ url('contacts') }}">КОНТАКТИ</a>
        </li>
        <li class="menu-list__item third"><a data-toggle="modal" data-target="#myModal" href="#reviews">ЗАМОВИТИ
                ЗАРАЗ</a></li>
    </ul>

    <ul class="bottom-menu">
        <li><a class="{{ Request::is('page-inkasaciya-yuridichnih-osib') ? 'active' : '' }}"
               href="{{ url('page-inkasaciya-yuridichnih-osib') }}">ІНКАСАЦІЯ ЮРИДИЧНИХ ОСІБ</a></li>
        <li><a class="{{ Request::is('page-inkasaciya-fizichnih-osib') ? 'active' : '' }}"
               href="{{ url('page-inkasaciya-fizichnih-osib') }}">ІНКАСАЦІЯ ФІЗИЧНИХ ОСІБ</a></li>
        <li><a class="{{ Request::is('page-inkasaciya-bankiv') ? 'active' : '' }}"
               href="{{ url('page-inkasaciya-bankiv') }}">ІНКАСАЦІЯ БАНКІВ</a></li>
        <li class="last"><a class="{{ Request::is('page-ohoronna-diyal-nist') ? 'active' : '' }}"
                            href="{{ url('page-ohoronna-diyal-nist') }}">ОХОРОННА ДІЯЛЬНІСТЬ</a></li>
    </ul>
</nav>

<div class="menu hiden">
    <nav class="main-navigation" id="toper">

        <div class="yellow-line">
            <p>ТОВ «ОК»АЛЬФА-ЗАХИСТ» пропонує скористатися послугами з інкасації коштів та перевезення валютних
                цінностей у зручний для Вас час.</p>
        </div>

        <div class="socials-search">
            <div class="socials-icons">

                @if(setting('site.youtube'))
                    <a href="{{ setting('site.youtube') }}" class="social-item odd"><i class="fa fa-youtube"
                                                                                       aria-hidden="true"></i></a>
                @endif

                @if(setting('site.facebook'))
                    <a href="{{ setting('site.facebook') }}" class="social-item odd"><i class="fa fa-facebook"
                                                                                        aria-hidden="true"></i></a>
                @endif

                @if(setting('site.twitter'))
                    <a href="{{ setting('site.twitter') }}" class="social-item odd"><i class="fa fa-twitter"
                                                                                       aria-hidden="true"></i></a>
                @endif

                @if(setting('site.rrs'))
                    <a href="{{ setting('site.rrs') }}" class="social-item odd"><i class="fa fa-rss"
                                                                                   aria-hidden="true"></i></a>
                @endif

            </div>
            <div class="search-body">
                <span class="search-field">

                    <form method="post" action="{{ action('PostsController@search') }}">
                     {{ csrf_field() }}
                        <input name="search" type="text" placeholder="Знайти...">
                        <button class="search-btn" type="submit" href=""><i class="fa fa-search"
                                                                            aria-hidden="true"></i>
                        </button>
                    </form>

                </span>
            </div>
        </div>

        <ul class="menu-list">
            <li class="menu-list__item {{ Request::is('/') ? 'active' : '' }}">
                <a class="{{ Request::is('/') ? 'active' : '' }}" href="{{ url('/') }}">ГОЛОВНА</a>
            </li>
            <li class="menu-list__item {{ Request::is('page-about') ? 'active' : '' }}">
                <a class="{{ Request::is('page-about') ? 'active' : '' }}" href="{{ url('page-about') }}">ПРО НАС</a>
            </li>
            <li class="menu-list__item {{ Request::is('posts') ? 'active' : '' }}">
                <a class="{{ Request::is('posts') ? 'active' : '' }}" href="{{ url('posts') }}">НОВИНИ</a>
            </li>
            <li class="logo menu-list__item">
                <img src="{{ asset('images/logo.png') }}" alt="">
            </li>
            <li class="menu-list__item third {{ Request::is('contacts') ? 'active' : '' }}">
                <a class="{{ Request::is('contacts') ? 'active' : '' }}" href="{{ url('contacts') }}">КОНТАКТИ</a>
            </li>
            <li class="menu-list__item third"><a data-toggle="modal" data-target="#myModal" href="#reviews">ЗАМОВИТИ
                    ЗАРАЗ</a></li>
            <li class="menu-list__item {{ Request::is('page-inkasaciya-yuridichnih-osib') ? 'active' : '' }}">
                <a class="{{ Request::is('page-inkasaciya-yuridichnih-osib') ? 'active' : '' }}"
                   href="{{ url('page-inkasaciya-yuridichnih-osib') }}">ІНКАСАЦІЯ ЮРИДИЧНИХ ОСІБ</a>
            </li>
            <li class="menu-list__item {{ Request::is('page-inkasaciya-fizichnih-osib') ? 'active' : '' }}">
                <a class="{{ Request::is('page-inkasaciya-fizichnih-osib') ? 'active' : '' }}"
                   href="{{ url('page-inkasaciya-fizichnih-osib') }}">ІНКАСАЦІЯ ФІЗИЧНИХ ОСІБ</a>
            </li>
            <li class="menu-list__item {{ Request::is('page-inkasaciya-bankiv') ? 'active' : '' }}">
                <a class="{{ Request::is('page-inkasaciya-bankiv') ? 'active' : '' }}"
                   href="{{ url('page-inkasaciya-bankiv') }}">ІНКАСАЦІЯ БАНКІВ</a>
            </li>
            <li class="menu-list__item {{ Request::is('page-ohoronna-diyal-nist') ? 'active' : '' }}">
                <a class="{{ Request::is('page-ohoronna-diyal-nist') ? 'active' : '' }}"
                   href="{{ url('page-ohoronna-diyal-nist') }}">ОХОРОННА ДІЯЛЬНІСТЬ</a>
            </li>
        </ul>
    </nav>
</div>


<div class="top-header">

    <div class="header-body">
        <div class="logo"><a href="{{ url('/') }}"><img src="{{ asset('images/logo.png') }}" alt=""></a></div>
        <div class="mobi-icons">
            <i class="fa fa-bars header-ico ico-bg" aria-hidden="true"></i>
            <img class="header-ico ico-two hider" src="{{ asset('images/close.png') }}" alt="">
        </div>
    </div>
</div>


<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">

            <div class="modal-header">
                <h5 class="modal-title"></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span class="close-modal" aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body">
                {{--<div class="left-part">--}}
                {{--<h3>ЗАТЕЛЕФОНУЙТЕ</h3>--}}
                {{--<a href=""><span class="first-span">Дзвонити</span></a>--}}
                {{--<p>Або дзвоніть на номер +38(000)000-00-00</p>--}}
                {{--<p>якщо ваш пристрій не підтримує дзвінки</p>--}}
                {{--<a href=""><span class="second-span">Замовити дзвінок</span></a>--}}
                {{--<p>Вам передзвонять, упродовж декіькох хвилин</p>--}}
                {{--</div>--}}
                {{--<div class="middle-part">--}}
                {{--<h3>Або</h3>--}}
                {{--<div class="vertical-line"></div>--}}
                {{--</div>--}}
                <div class="right-part">
                    <h3>ЗАЛИШТЕ ПОВІДОМЛЕННЯ</h3>

                    <form action="">
                        <input type="text" placeholder="Як до вас звертатися?">
                        <input type="text" placeholder="Номер телефону, або e-mail  для зворотнього зв’язку ...">
                        <textarea rows="5" placeholder="Текст повідомлення  ..."></textarea>
                        <input type="submit" value="Відправити" class="btn-submit hover-button-submit">
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>