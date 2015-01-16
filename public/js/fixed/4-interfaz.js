$(document).ready(function() {

    responsiveness();
    $(window).resize(responsiveness);

    setMenu();
    setBackToTop();


}) // document ready


/* ***** VARIABLES ***** */

var headerHeight = 0;
var device = null;


/* ***** FUNCIONES ***** */

function responsiveness() {

    if ($(window).width() < 768) {
        device = 'mobile';
        headerHeight = 65;
    } else if ($(window).width() < 980) {
        device = 'tablet';
        headerHeight = 65;
    } else {
        device = 'desktop';
        headerHeight = 156;
    }

} // responsiveness

function setMenu() {

    // MENU DESPLEGABLE
    $('#menuBt').click(function() {
        $('body').addClass('openMenu');
        return false;
    });
    $('#menuClose').click(function() {
        $('body').removeClass('openMenu');
        return false;
    });

    // SUBMENU ANCHORS
    $('.submenu a').click(function() {
        $('html, body').stop().animate({
            'scrollTop': $($(this).attr('href')).offset().top - headerHeight
        }, 1000, 'easeOutCubic');
        $('body').removeClass('openMenu');
        return false;
    });

}

function setBackToTop() {
    $('#backToTop').click(function() {
        $('html, body').stop().animate({
            'scrollTop': 0
        }, 500, 'easeOutCubic');
        return false;
    });
}