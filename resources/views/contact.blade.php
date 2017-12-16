@extends('master.layoult')

@section('css')

@endsection

@section('content')

    <div id="contacts">
        <div class="container">

            <div class="row">
                <div class="col-md-12">
                    <h2 class="title"><a href="#"><span class="num-block"></span>КОНТАКТИ</a></h2>
                </div>
            </div>

            <div class="row wrapper-main-contact-block">
                <div class="col-md-6 col-xl-4">
                    <div class="wrapper-contact-item">
                        <div class="wrapper-image-contacts">
                            <img class="avatar" src="{{ asset('images/users.png') }}" alt="">
                        </div>
                        <div class="wrapper-contact-info">
                            <p class="position">Lorem ipsum dolor sit amet, consectetur Aliquid, ipsa.</p>
                            <p class="email"><a href="mailto:boss@gmail.com?Subject=Hello%20again" target="_top">boss@gmail.com</a>
                            </p>
                            <p class="phone"><a href="tel:+38 (000) 000-00-00">+38 (000) 000-00-00</a></p>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-xl-4">
                    <div class="wrapper-contact-item">
                        <div class="wrapper-image-contacts">
                            <img class="avatar" src="{{ asset('images/users.png') }}" alt="">
                        </div>
                        <div class="wrapper-contact-info">
                            <p class="position">Lorem elit. Aliquid, ipsa.</p>
                            <p class="email"><a href="mailto:boss@gmail.com?Subject=Hello%20again" target="_top">boss@gmail.com</a>
                            </p>
                            <p class="phone"><a href="tel:+38 (000) 000-00-00">+38 (000) 000-00-00</a></p>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-xl-4">
                    <div class="wrapper-contact-item">
                        <div class="wrapper-image-contacts">
                            <img class="avatar" src="{{ asset('images/users.png') }}" alt="">
                        </div>
                        <div class="wrapper-contact-info">
                            <p class="position">Lorem ipsum.</p>
                            <p class="email"><a href="mailto:boss@gmail.com?Subject=Hello%20again" target="_top">boss@gmail.com</a>
                            </p>
                            <p class="phone"><a href="tel:+38 (000) 000-00-00">+38 (000) 000-00-00</a></p>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-xl-4">
                    <div class="wrapper-contact-item">
                        <div class="wrapper-image-contacts">
                            <img class="avatar" src="{{ asset('images/users.png') }}" alt="">
                        </div>
                        <div class="wrapper-contact-info">
                            <p class="position">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid,
                                ipsa.</p>
                            <p class="email"><a href="mailto:boss@gmail.com?Subject=Hello%20again" target="_top">boss@gmail.com</a>
                            </p>
                            <p class="phone"><a href="tel:+38 (000) 000-00-00">+38 (000) 000-00-00</a></p>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-xl-4">
                    <div class="wrapper-contact-item">
                        <div class="wrapper-image-contacts">
                            <img class="avatar" src="{{ asset('images/users.png') }}" alt="">
                        </div>
                        <div class="wrapper-contact-info">
                            <p class="position">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid,
                                ipsa.</p>
                            <p class="email"><a href="mailto:boss@gmail.com?Subject=Hello%20again" target="_top">boss@gmail.com</a>
                            </p>
                            <p class="phone"><a href="tel:+38 (000) 000-00-00">+38 (000) 000-00-00</a></p>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-xl-4">
                    <div class="wrapper-contact-item">
                        <div class="wrapper-image-contacts">
                            <img class="avatar" src="{{ asset('images/users.png') }}" alt="">
                        </div>
                        <div class="wrapper-contact-info">
                            <p class="position">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid,
                                ipsa.</p>
                            <p class="email"><a href="mailto:boss@gmail.com?Subject=Hello%20again" target="_top">boss@gmail.com</a>
                            </p>
                            <p class="phone"><a href="tel:+38 (000) 000-00-00">+38 (000) 000-00-00</a></p>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <p class="contact-intro-text">
                            Запрошуємо Вас завітати до нашого головного офісу за адресою: м. Місто, вул. Назва Вулиці,
                            №, будинку 1, 3-й поверх, офіс 301.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="map">
        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d10070.07390541555!2d34.77503999999999!3d50.87711365!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sru!2sua!4v1513384254389"
                height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
    </div>

    <div id="form">
        <div class="container">
            <div class="row">
                <div class="col-md-6 form-with-line">

                    <div class="wrapper-title-form">
                        <h2 class="title"><span class="num-block"></span>ЗАЛИШИТИ ПОВІДОМЛЕННЯ</h2>
                    </div>

                    <form id="contact-form">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Як до Вас звертатись? ...">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="e-mail,  для зворотнього зв’язку ...">
                        </div>
                        <div class="form-group">
                            <textarea class="form-control" rows="8"
                                      placeholder="Ввідить текст свого повідомлення, не більше 1000 знаків..."></textarea>
                        </div>

                        <div class="form-group">
                            {{--{!! NoCaptcha::display(['data-theme' => 'dark']) !!}--}}
                        </div>

                        <div class="col-md-12 wrapper-submit-button">
                            <button type="submit" class="btn btn-primary submit-btn">ВІДПРАВИТИ</button>
                        </div>

                    </form>
                </div>
                <div class="col-md-6 wrapper-form-right-text-block">
                    <div class="wrapper-form-right-text">
                        <ul>
                            <li class="contact-list">Ми завжди прислухаємося до побажаннь від наших клієнтів та
                                партнерів.
                            </li>
                            <li class="contact-list">Якщо ви бажаєте повідомити нам своє зауваження чи побажання,
                                скористайтеся формою зворотнього зв’язку.
                            </li>
                            <li class="contact-list">Також пишіть сюди у випадку, коли ви бажаете більш детальніше
                                дізнатися про наші послуги.
                            </li>
                            <li class="contact-list">Для замовлення послуги скористайтеся функцією
                                <a class="order-now" data-toggle="modal" data-target="#myModal" href="#reviews">“ЗАМОВИТИ ЗАРАЗ”</a>
                            </li>
                        </ul>
                    </div>

                    <div class="contact-siluet">
                        <img src="{{ asset('images/siluet.png') }}" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>



@endsection

@section('scripts')

@endsection