$(document).ready(function() {

    $(".header-ico").click(function () {
        $(".menu").animate({width: 'toggle'});
        $(".menu").removeClass('hiden');
        $(".mobi-icons .ico-two").toggleClass('hider');
 		$(".top-header .header-body").toggleClass('zero-width');
 		$(".mobi-icons .ico-bg").toggleClass('fone-hide');
 		$(".header-body .logo").toggleClass('hider');
    });

    $(".social-block .left-part").click(function () {
		$(".social-block").toggleClass('open');
		$(".social-block .right-part").toggleClass('hide');
    });
});
