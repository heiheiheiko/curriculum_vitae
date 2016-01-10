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

$(function () {
  $('[data-toggle="tooltip"]').tooltip()

  $(document).scroll(function() {
    selector = $('header .navbar');
    goto_element_height = 70
    fixed_header_height = 72
    correction = goto_element_height + fixed_header_height
    if ($(this).scrollTop() >= ($('#goto-chronicle').position().top - correction)) {
      selector.switchClass('navbar-introduction', 'navbar-chronicle', 150);
    }
    if ($(this).scrollTop() < ($('#goto-chronicle').position().top - correction)) {
      selector.switchClass('navbar-chronicle', 'navbar-introduction', 150);
    }
  });
})
