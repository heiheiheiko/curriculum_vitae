$(function() {
  $('#introduction').find('.card').mouseenter(function() {
    $(this).find('img').animate({opacity: 1}, 500);
  });

  $('#introduction').find('.card').mouseout(function() {
    if(!$(this).hasClass('active'))
      $(this).find('img').animate({opacity: 0.4}, 500);
  });

  $('#introduction').find('.card').click(function() {
    $(this).parent().find('.card').find('img').animate({opacity: 0.4}, 500).parent().removeClass('active');
    $(this).animate({opacity: 1}, 500).delay(500).addClass('active');
  });
});
