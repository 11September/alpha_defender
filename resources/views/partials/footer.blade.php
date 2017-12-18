<footer class="footer">
    <div class="footer-background">
        <div class="container">
            <div class="row footer-wrapper">
                <div class="col-md-3 col-sm-6 col-12">
                    <img class="footer-image" src="{{ asset('images/LOGO_small.png') }}" alt="">
                </div>
                <div class="col-md-6 col-sm-6 col-12">
                    <div class="wrrapper-description">
                        <p class="footer-description-text">
                            Замовити нас Ви можете день в день, та у вихідні дні, <br>
                            здійснюємо послугу з інкасації та перевезення протягом години <br>
                            з моменту отримання заявки.
                        </p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-12 text-center">
                    <div class="social-wrapper">
                        <div class="social-block">
                            <ul class="list-inline">

                                @if(setting('site.youtube'))

                                    <li class="list-inline-item">
                                        <a class="social-icon text-xs-center" target="_blank"
                                           href="{{ setting('site.youtube') }}">
                                            <i class="fa fa-youtube fa-2x" aria-hidden="true"></i>
                                        </a>
                                    </li>
                                @endif

                                @if(setting('site.facebook'))
                                    <li class="list-inline-item">
                                        <a class="social-icon text-xs-center" target="_blank"
                                           href="{{ setting('site.facebook') }}">
                                            <i class="fa fa-facebook fa-2x" aria-hidden="true"></i>
                                        </a>
                                    </li>
                                @endif

                                @if(setting('site.twitter'))
                                    <li class="list-inline-item">
                                        <a class="social-icon text-xs-center" target="_blank"
                                           href="{{ setting('site.twitter') }}">
                                            <i class="fa fa-twitter fa-2x" aria-hidden="true"></i>
                                        </a>
                                    </li>
                                @endif

                                @if(setting('site.rrs'))
                                    <li class="list-inline-item">
                                        <a class="social-icon text-xs-center" target="_blank" href="{{ setting('site.rrs') }}">
                                            <i class="fa fa-rss fa-2x" aria-hidden="true"></i>
                                        </a>
                                    </li>
                                @endif

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="clearfix"></div>

    <div class="row copyright">
        <p class="copyright-text">АльфаЗахист &#9400; 2017</p>
    </div>
</footer>