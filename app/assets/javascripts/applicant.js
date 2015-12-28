$(function() {
  // init introduction
  $('#introduction .card:eq(0)').addClass('active');

  $('#introduction').find('.card').mouseenter(function() {
    card_in($(this))
  });

  $('#introduction').find('.card').mouseout(function() {
    if(!$(this).hasClass('active')){
      card_out($(this))
    }
  });

  $('#introduction').find('.card').click(function() {
    cards = $(this).parent().find('.card')
    card_out(cards);
    cards.removeClass('active');

    $(this).addClass('active');
  });

  $('.toggle_collapse_icon').click(function() {
    $(this).toggleClass('fa-chevron-circle-up fa-chevron-circle-down')
  });
});

function card_in(selector) {
  selector.find('img').animate({opacity: 1}, 500);
  selector.find('.card-title').animate({opacity: 1}, 500);
  selector.find('.card-text').animate({opacity: 1}, 500);
}

function card_out(selector) {
  selector.find('img').animate({opacity: 0.4}, 500);
  selector.find('.card-title').animate({opacity: 0}, 500);
  selector.find('.card-text').animate({opacity: 0}, 500);
}
