function initFilter(){
  initFilterToggleSection();
  initFilterItemTypeClick();
  initFilterItemTopClick();
}

function initFilterToggleSection() {
  $(document).scroll(function() {
    toggleFilterSection('.js-chronicle-filter', '#goto-chronicle', '#goto-skills');
    toggleFilterSection('.js-skills-filter', '#goto-skills', '#goto-interests');
  });
}

function initFilterItemTypeClick() {
  $('.js-filter-item-type').click(function(event) {
    event.preventDefault();

    var that = $(this);
    var container = that.closest('ul');
    var filterItemTopElm = container.find('.js-filter-item-top');
    
    if (!filterItemTopElm.hasClass("is-disabled")){
      disableFilter(filterItemTopElm);
    }

    if(!that.hasClass('is-disabled')) {
      disableFilter(that);
    } else {
      enableFilter(that);
    }

    $('[data-toggle="tooltip"]').tooltip();
  });
}

function initFilterItemTopClick() {
  $('.js-filter-item-top').click(function(event) {
    event.preventDefault();

    var that = $(this);
    var container = that.closest('ul');
    var targetElms = $(that.closest('li').data('target-class'));

    that.toggleClass('is-disabled');
    that.find('.fa-circle').toggleClass('text-disabled');
    
    if(!that.hasClass('is-disabled')) {
      container.find('.js-filter-item-type').each(function(){
        disableFilter($(this));
      });
      targetElms.filter(function(){
        return $(this).hasClass("is-top")
      }).show();

      enableFilter(that, { toggleTargetElms: false });
    } else {
      container.find('.js-filter-item-type').each(function(){
        enableFilter($(this));
      });

      disableFilter(that, { toggleTargetElms: false });
    }
    $('[data-toggle="tooltip"]').tooltip();
  });
}

function disableFilter(elm, options){
  var defaults = {toggleTargetElms: true };
  var options = $.extend({}, defaults, options || {});

  elm.addClass('is-disabled');
  elm.find('.fa-circle').addClass('text-disabled');

  var message = elm.data('enable-tooltip-message');
  elm.attr('data-original-title', message);

  if (options.toggleTargetElms) {
    var targetElms = $(elm.closest('li').data('target-class'));
    targetElms.hide();
  }
}

function enableFilter(elm, options){
  var defaults = {toggleTargetElms: true };
  var options = $.extend({}, defaults, options || {});

  elm.removeClass('is-disabled');
  elm.find('.fa-circle').removeClass('text-disabled');

  var message = elm.data('disable-tooltip-message');
  elm.attr('data-original-title', message);

  if (options.toggleTargetElms) {
    var targetElms = $(elm.closest('li').data('target-class'));
    targetElms.show();
  }
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
