// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require tether
//= require jquery_ujs
//= require jquery-ui
//= require bootstrap-sprockets
//= require_tree .
//= require highcharts/highcharts
//= require highcharts/highcharts-more
$(function () {
  var lastScrollTop = 0;
  $('[data-toggle="tooltip"]').tooltip()

  $(document).scroll(function() {
    selector = $('header .navbar');
    goto_element_height = 70
    fixed_header_height = 72
    correction = goto_element_height + fixed_header_height

    chronicle_break_point = $('#goto-chronicle').position().top - correction
    skills_break_point = $('#goto-skills').position().top - correction

    var x = $(this).scrollTop();
    if (x > lastScrollTop){
      switch (true) {
        case (0 <= x && x < chronicle_break_point):
            selector.switchClass('navbar-chronicle', 'navbar-introduction', 150);
            break;
        case (chronicle_break_point <= x && x < skills_break_point):
            selector.switchClass('navbar-introduction', 'navbar-chronicle', 150);
            break;
        case (x > skills_break_point):
            selector.switchClass('navbar-chronicle', 'navbar-skills', 150);
            break;
      }
    } else {
      switch (true) {
        case (skills_break_point >= x && x > chronicle_break_point ):
            selector.switchClass('navbar-skills', 'navbar-chronicle', 150);
            break;
        case ( chronicle_break_point > x && x >= 0):
            selector.switchClass('navbar-chronicle', 'navbar-introduction', 150);
            break;
      }
    }
    lastScrollTop = x;
  });
})
