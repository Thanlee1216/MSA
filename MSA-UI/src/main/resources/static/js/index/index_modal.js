$(function() {

    var w = $(window).width(),
        h = $(window).height();
    //$('section').width(w);
    $('section').height(h);
    $('menu .container').height(h - 60);
    $('body').prepend('<div id="overlay">');

    $('#close-menu').click(function() {$('html').removeClass('active');});
    $('#overlay').click(function() {$('html').removeClass('active');});
    $(window).resize(function() {
        var w = $(window).width(),
            h = $(window).height();
        //$('section').width(w);
        $('section').height(h);
        // $('menu .container').height(h - 60);
    });

});

function openModal() {
    $('html').addClass('active');
}