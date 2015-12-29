$(function() {
  // introduction
  $('#introduction .card:eq(0)').addClass('active');

  $('#introduction').find('.card').click(function() {
    cards = $(this).parent().find('.card')
    cards.find('img').animate({opacity: 0.4}, 500);
    cards.find('.card-title').animate({opacity: 0}, 500);
    cards.find('.card-text').animate({opacity: 0}, 500);
    cards.removeClass('active');

    $(this).addClass('active');
  });

  // chronicle
  $('#chronicle .filter').hide();

  $(document).scroll(function() {
    selector = $('#chronicle .filter')
    if ($(this).scrollTop() >= $('#chronicle').position().top) {
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
