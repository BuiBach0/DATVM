showHideMenuMobile();
function showHideMenuMobile() {
    $(document).on('click', '.btn-menu-mobie', function () {
        if ($(this).attr('data-display') == 0) {
            $('nav').addClass('show');
            $(this).addClass('active');
            $(this).attr('data-display', 1);
        } else {

            $('nav').removeClass('show');
            $(this).removeClass('active');
            $(this).attr('data-display', 0);

        }

    })
}
$(".regular").slick({
    dots: true,
    infinite: true,
    slidesToShow: 1,
    slidesToScroll: 1
});
$(".slide-welcome").slick({
    dots: true,
    arrows: false,
    infinite: true,
    slidesToScroll: 1,
    slidesToShow: 3,
    // autoplay: true,
    // autoplaySpeed: 2000,
    responsive: [
        {
            breakpoint: 1920,
            settings: {
                slidesToShow: 3,
                slidesToScroll: 1,
            },
        },
        {
            breakpoint: 1199,
            settings: {
                slidesToShow: 3,
                slidesToScroll: 1,
            },
        },
        {
            breakpoint: 991,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 1,
            },
        },
        {
            breakpoint: 575,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1,
            },
        },
    ],
});

$(".slide-team").slick({
    dots: true,
    arrows: false,
    infinite: true,
    slidesToScroll: 1,
    slidesToShow: 3,
    // autoplay: true,
    // autoplaySpeed: 2000,
    responsive: [
        {
            breakpoint: 1920,
            settings: {
                slidesToShow: 3,
                slidesToScroll: 1,
            },
        },
        {
            breakpoint: 1199,
            settings: {
                slidesToShow: 3,
                slidesToScroll: 1,
            },
        },
        {
            breakpoint: 991,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 1,
            },
        },
        {
            breakpoint: 575,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1,
            },
        },
    ],
});