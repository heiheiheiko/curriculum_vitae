export class Applicant {
  constructor() {
    this.lastScrollTop = 0;
  }

  initApplicant() {
    this.initApplicantHeaderColorSwitch();
  }

  initApplicantHeaderColorSwitch() {
    $(document).scroll(function () {
      const selector = $('.js-applicant-header');
      const gotoElmHeight = 70;
      const fixedHeaderHeight = 72;
      const correction = gotoElmHeight + fixedHeaderHeight;

      const chronicleBreakpoint = $('#goto-chronicle').position().top - correction;
      const skillsBreakpoint = $('#goto-skills').position().top - correction;
      const interestsBreakpoint = $('#goto-interests').position().top - correction;
      const faqsBreakpoint = $('#goto-faqs').position().top - correction;

      const x = $(this).scrollTop();
      if (x > this.lastScrollTop) {
        switch (true) {
        case (x >= 0 && x < chronicleBreakpoint):
          selector.switchClass('applicant-header-chronicle', 'applicant-header-introduction', 150);
          break;
        case (chronicleBreakpoint <= x && x < skillsBreakpoint):
          selector.switchClass('applicant-header-introduction', 'applicant-header-chronicle', 150);
          break;
        case (skillsBreakpoint <= x && x < interestsBreakpoint):
          selector.switchClass('applicant-header-chronicle', 'applicant-header-skills', 150);
          break;
        case (x > interestsBreakpoint <= x && x < faqsBreakpoint):
          selector.switchClass('applicant-header-skills', 'applicant-header-interests', 150);
          break;
        case (x > faqsBreakpoint):
          selector.switchClass('applicant-header-interests', 'applicant-header-faqs', 150);
          break;
        }
      } else {
        switch (true) {
        case (faqsBreakpoint >= x && x > interestsBreakpoint):
          selector.switchClass('applicant-header-faqs', 'applicant-header-interests', 150);
          break;
        case (interestsBreakpoint >= x && x > skillsBreakpoint):
          selector.switchClass('applicant-header-interests', 'applicant-header-skills', 150);
          break;
        case (skillsBreakpoint >= x && x > chronicleBreakpoint):
          selector.switchClass('applicant-header-skills', 'applicant-header-chronicle', 150);
          break;
        case (chronicleBreakpoint > x && x >= 0):
          selector.switchClass('applicant-header-chronicle', 'applicant-header-introduction', 150);
          break;
        }
      }
      this.lastScrollTop = x;
    });
  }
}
