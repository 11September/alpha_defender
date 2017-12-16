$(document).ready(function() {

    $(".header-ico").click(function () {
        $(".menu").animate({width: 'toggle'});
        $(".menu").removeClass('hiden');
        $(".mobi-icons .ico-one").toggleClass('hider');
 		$(".mobi-icons .ico-two").toggleClass('hider');
 		$(".mobi-icons .ico-bg").toggleClass('fone-hide');
    });

    $(".social-block .left-part").click(function () {
		$(".social-block").toggleClass('open');
		$(".social-block .right-part").toggleClass('hide');
    });
});
