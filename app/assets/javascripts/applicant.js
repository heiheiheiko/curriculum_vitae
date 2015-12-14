$(function() {
  // init introduction
  $('#introduction .images .card:eq(0)').addClass('active');
  $('#introduction .descriptions .collapse:eq(0)').addClass('in');

  $('#introduction').find('.card').mouseenter(function() {
    $(this).find('img').animate({opacity: 1}, 500);
  });

  $('#introduction').find('.card').mouseout(function() {
    if(!$(this).hasClass('active'))
      $(this).find('img').animate({opacity: 0.4}, 500);
  });

  $('#introduction').find('.card').click(function() {
    // image animation
    $(this).parent().find('.card').find('img').animate({opacity: 0.4}, 500).parent().removeClass('active');
    $(this).animate({opacity: 1}, 500).delay(500).addClass('active');

    // collapse handling
    id = $(this).attr('href');
    $('.descriptions').find('.collapse').collapse('hide');
    $(id).collapse('show');
  });
});
