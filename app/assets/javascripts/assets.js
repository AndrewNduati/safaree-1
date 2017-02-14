$(function() {

                  var menu_ul = $('.faq > li > ul'),
                    menu_a = $('.faq > li > a');

                  menu_ul.hide();

                  menu_a.click(function(e) {
                    e.preventDefault();
                    if (!$(this).hasClass('active')) {
                      menu_a.removeClass('active');
                      menu_ul.filter(':visible').slideUp('normal');
                      $(this).addClass('active').next().stop(true, true).slideDown('normal');
                    } else {
                      $(this).removeClass('active');
                      $(this).next().stop(true, true).slideUp('normal');
                    }
                  });

                });
$(document).ready(function() {
      $("#owl-demo").owlCarousel({
        items: 3,
        lazyLoad: true,
        autoPlay: true,
        pagination: true,
      });
    });

jQuery(document).ready(function($) {
      $(".scroll").click(function(event) {
        event.preventDefault();

        $('html,body').animate({
          scrollTop: $(this.hash).offset().top
        }, 1000);
      });
    });

addEventListener("load", function() {
      setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
      window.scrollTo(0, 1);
    }