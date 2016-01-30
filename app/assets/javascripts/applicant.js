$(function() {
  // chronicle
  $('#chronicle .filter').hide();

  $(document).scroll(function() {
    selector = $('#chronicle .filter')
    goto_element_height = 70
    fixed_header_height = 72
    correction = goto_element_height + fixed_header_height

    chronicle_break_point = $('#goto-chronicle').position().top - correction
    skills_break_point = $('#goto-skills').position().top - correction

    x = $(this).scrollTop()
    if ( chronicle_break_point <= x && x < skills_break_point ) {
      selector.fadeIn();
    } else {
      selector.fadeOut();
    }
  });

  $('#chronicle .filter .timeline-badge').click(function() {
    $(this).toggleClass('disabled')
    $(this).find('.fa-stack-2x').toggleClass('default')
    target_class = $(this).closest('li').prop('class');

    if($(this).hasClass('disabled')){
      message = $(this).data('enable-tooltip-message')
      $(this).attr('data-original-title', message);
      $('.timeline').find('.' + target_class).fadeOut();
    }else {
      message = $(this).data('disable-tooltip-message');
      $(this).attr('data-original-title', message)
      $('.timeline').find('.' + target_class).fadeIn();
    }
    $('[data-toggle="tooltip"]').tooltip()
  });

  $('.toggle_collapse_icon').click(function() {
    $(this).toggleClass('fa-chevron-circle-up fa-chevron-circle-down')
  });
});
