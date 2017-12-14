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

            <div class="row">

                <div class="col-md-4">
                    <div class="wrapper-image-contacts">
                        <img src="" alt="">
                    </div>
                    <div class="wrapper-contact-info">
                        <p class="position">Lorem ipsum.</p>
                        <p class="email">Lorem ipsum.</p>
                        <p class="phone">Lorem ipsum.</p>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="wrapper-image-contacts">
                        <img src="" alt="">
                    </div>
                    <div class="wrapper-contact-info">
                        <p class="position">Lorem ipsum.</p>
                        <p class="email">Lorem ipsum.</p>
                        <p class="phone">Lorem ipsum.</p>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="wrapper-image-contacts">
                        <img src="" alt="">
                    </div>
                    <div class="wrapper-contact-info">
                        <p class="position">Lorem ipsum.</p>
                        <p class="email">Lorem ipsum.</p>
                        <p class="phone">Lorem ipsum.</p>
                    </div>
                </div>
            </div>

            <div class="row">
                <h1></h1>

                <div class="col-md-4">
                    <div class="wrapper-image-contacts">
                        <img src="" alt="">
                    </div>
                    <div class="wrapper-contact-info">
                        <p class="position">Lorem ipsum.</p>
                        <p class="email">Lorem ipsum.</p>
                        <p class="phone">Lorem ipsum.</p>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="wrapper-image-contacts">
                        <img src="" alt="">
                    </div>
                    <div class="wrapper-contact-info">
                        <p class="position">Lorem ipsum.</p>
                        <p class="email">Lorem ipsum.</p>
                        <p class="phone">Lorem ipsum.</p>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="wrapper-image-contacts">
                        <img src="" alt="">
                    </div>
                    <div class="wrapper-contact-info">
                        <p class="position">Lorem ipsum.</p>
                        <p class="email">Lorem ipsum.</p>
                        <p class="phone">Lorem ipsum.</p>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <p class="contact-intro-text">
                            Запрошуємо Вас завітати до нашого головного офісу за адресою: м. Місто, вул. Назва Вулиці, №, будинку 1,  3-й поверх, офіс 301.</p>
                    </div>
                </div>
            </div>
        </div>

        <div id="map">

        </div>

        <div id="form">
            <div class="container">

                <div class="row">
                    <div class="col-md-12">
                        <h2 class="title"><a href="#"><span class="num-block"></span>ЗАЛИШИТИ ПОВІДОМЛЕННЯ</a></h2>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6">

                        <form>
                            <div class="form-group">
                                <label class="col-form-label" for="formGroupExampleInput">Example label</label>
                                <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Example input">
                            </div>
                            <div class="form-group">
                                <label class="col-form-label" for="formGroupExampleInput2">Another label</label>
                                <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="Another input">
                            </div>
                            <div class="form-group">
                                <label for="exampleFormControlTextarea1">Example textarea</label>
                                <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                            </div>

                            <div class="form-group">
                                {!! NoCaptcha::display(['data-theme' => 'dark']) !!}
                            </div>
                            <button type="submit" class="btn btn-primary">Sign in</button>
                        </form>
                    </div>
                    <div class="col-md-6">
                        <ul>
                            <li class="contact-list">Ми завжди прислухаємося до побажаннь від наших клієнтів та партнерів.</li>
                            <li class="contact-list">Якщо ви бажаєте повідомити нам своє зауваження чи побажання, скористайтеся формою зворотнього зв’язку.</li>
                            <li class="contact-list">Також пишіть сюди у  випадку, коли ви бажаете більш детальніше дізнатися про наші послуги.</li>
                            <li class="contact-list">Для замовлення послуги скористайтеся функцією “ЗАМОВИТИ ЗАРАЗ”</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>



@endsection

@section('scripts')

@endsection