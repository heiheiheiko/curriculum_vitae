export class Filter {
  initFilter() {
    this.initFilterToggleSection();
    this.initFilterItemTypeClick();
    this.initFilterItemTopClick();
  }

  static toggleFilterSection(filterSelector, breakpoint1Selector, breakpoint2Selector) {
    const filterElm = $(filterSelector);
    const gotoElmHeight = $('.goto').height();
    const applicantHeaderHeight = $('.js-applicant-header').height();
    const correction = gotoElmHeight + applicantHeaderHeight;

    const breakpoint1 = $(breakpoint1Selector).position().top - correction;
    const breakpoint2 = $(breakpoint2Selector).position().top - correction;

    const x = $(window).scrollTop();
    if (breakpoint1 <= x && x < breakpoint2) {
      filterElm.show();
    } else {
      filterElm.hide();
    }
  }

  static disableFilter(elm, options) {
    const defaults = { toggleTargetElms: true };
    options = $.extend({}, defaults, options || {});

    elm.addClass('is-disabled');
    elm.find('.fa-circle').addClass('text-disabled');

    const message = elm.data('enable-tooltip-message');
    elm.attr('data-original-title', message);

    if (options.toggleTargetElms) {
      const targetElms = $(elm.closest('li').data('target-class'));
      targetElms.hide();
    }
  }

  static enableFilter(elm, options) {
    const defaults = { toggleTargetElms: true };
    options = $.extend({}, defaults, options || {});

    elm.removeClass('is-disabled');
    elm.find('.fa-circle').removeClass('text-disabled');

    const message = elm.data('disable-tooltip-message');
    elm.attr('data-original-title', message);

    if (options.toggleTargetElms) {
      const targetElms = $(elm.closest('li').data('target-class'));
      targetElms.show();
    }
  }

  initFilterToggleSection() {
    const thisClass = this;
    $(document).scroll(() => {
      thisClass.constructor.toggleFilterSection('.js-chronicle-filter', '#goto-chronicle', '#goto-skills');
      thisClass.constructor.toggleFilterSection('.js-skills-filter', '#goto-skills', '#goto-interests');
      thisClass.constructor.toggleFilterSection('.js-faqs-filter', '#goto-faqs', '#goto-end');
    });
  }

  initFilterItemTypeClick() {
    const thisClass = this;

    $('.js-filter-item-type').click(function (event) {
      event.preventDefault();

      const that = $(this);
      const container = that.closest('ul');
      const filterItemTopElm = container.find('.js-filter-item-top');

      if (!filterItemTopElm.hasClass('is-disabled')) {
        thisClass.constructor.disableFilter(filterItemTopElm);
      }

      if (!that.hasClass('is-disabled')) {
        thisClass.constructor.disableFilter(that);
      } else {
        thisClass.constructor.enableFilter(that);
      }

      $('[data-toggle="tooltip"]').tooltip();
    });
  }

  initFilterItemTopClick() {
    const thisClass = this;

    $('.js-filter-item-top').click(function (event) {
      event.preventDefault();

      const that = $(this);
      const container = that.closest('ul');
      const targetElms = $(that.closest('li').data('target-class'));

      that.toggleClass('is-disabled');
      that.find('.fa-circle').toggleClass('text-disabled');

      if (!that.hasClass('is-disabled')) {
        container.find('.js-filter-item-type').each(function () {
          thisClass.constructor.disableFilter($(this));
        });
        targetElms.filter(function () {
          return $(this).hasClass('is-top');
        }).show();

        thisClass.constructor.enableFilter(that, { toggleTargetElms: false });
      } else {
        container.find('.js-filter-item-type').each(function () {
          thisClass.constructor.enableFilter($(this));
        });

        thisClass.constructor.disableFilter(that, { toggleTargetElms: false });
      }
      $('[data-toggle="tooltip"]').tooltip();
    });
  }
}
