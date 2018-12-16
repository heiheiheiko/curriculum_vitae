function initApplicant(){
  initApplicantHeaderColorSwitch();
}

function initApplicantHeaderColorSwitch(){
  var lastScrollTop = 0;
  
  $(document).scroll(function() {
    var selector = $('.js-applicant-header');
    var goto_element_height = 70
    var fixed_header_height = 72
    var correction = goto_element_height + fixed_header_height

    var chronicle_break_point = $('#goto-chronicle').position().top - correction
    var skills_break_point = $('#goto-skills').position().top - correction
    var interests_break_point = $('#goto-interests').position().top - correction

    var x = $(this).scrollTop();
    if (x > lastScrollTop){
      switch (true) {
        case (0 <= x && x < chronicle_break_point):
            selector.switchClass('applicant-header-chronicle', 'applicant-header-introduction', 150);
            break;
        case (chronicle_break_point <= x && x < skills_break_point):
            selector.switchClass('applicant-header-introduction', 'applicant-header-chronicle', 150);
            break;
        case (skills_break_point <= x && x < interests_break_point):
            selector.switchClass('applicant-header-chronicle', 'applicant-header-skills', 150);
            break;
        case (x > interests_break_point):
            selector.switchClass('applicant-header-skills', 'applicant-header-interests', 150);
            break;
      }
    } else {
      switch (true) {
        case (interests_break_point >= x && x > skills_break_point ):
            selector.switchClass('applicant-header-interests', 'applicant-header-skills', 150);
            break;
        case (skills_break_point >= x && x > chronicle_break_point ):
            selector.switchClass('applicant-header-skills', 'applicant-header-chronicle', 150);
            break;
        case ( chronicle_break_point > x && x >= 0):
            selector.switchClass('applicant-header-chronicle', 'applicant-header-introduction', 150);
            break;
      }
    }
    lastScrollTop = x;
  });
}
