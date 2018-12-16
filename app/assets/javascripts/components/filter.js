function initFilter(){
  initFilterToggleSection();
  initFilterItemClick();
}

function initFilterToggleSection() {
  $(document).scroll(function() {
    toggleFilterSection('.js-chronicle-filter', '#goto-chronicle', '#goto-skills');
    toggleFilterSection('.js-skills-filter', '#goto-skills', '#goto-interests');
  });
}

function initFilterItemClick() {
  $('.js-filter-item').click(function(event) {
    event.preventDefault();

    var that = $(this);
    var target_class = that.closest('li').data('target-class');
    var message = "";

    that.toggleClass('disabled');
    that.find('.fa-circle').toggleClass('text-grey');
    
    if(that.hasClass('disabled')) {
      message = that.data('enable-tooltip-message');
      that.attr('data-original-title', message);
      $('.' + target_class).hide();
    } else {
      message = that.data('disable-tooltip-message');
      that.attr('data-original-title', message);
      $('.' + target_class).show();
    }
    $('[data-toggle="tooltip"]').tooltip();
  });

  $('.toggle_collapse_icon').click(function() {
    $(this).toggleClass('fa-chevron-circle-up fa-chevron-circle-down');
  });
}

function toggleFilterSection(filterSelector, breakpoint1Selector, breakpoint2Selector) {
  var filterElm = $(filterSelector);
  var gotoElmHeight = $('.goto').height();
  var applicantHeaderHeight = $('.js-applicant-header').height();
  var correction = gotoElmHeight + applicantHeaderHeight;

  var breakpoint1 = $(breakpoint1Selector).position().top - correction;
  var breakpoint2 = $(breakpoint2Selector).position().top - correction;

  var x = $(this).scrollTop()
  if ( breakpoint1 <= x && x < breakpoint2 ) {
    filterElm.show();
  } else {
    filterElm.hide();
  }
}
