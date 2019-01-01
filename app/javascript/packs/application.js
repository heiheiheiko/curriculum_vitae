import { Filter } from './components/filter';
import { Applicant } from './applicant';

$(() => {
  $('[data-toggle="tooltip"]').tooltip();

  $('.toggle_collapse_icon').click(function () {
    $(this).toggleClass('fa-chevron-circle-up fa-chevron-circle-down');
  });

  const filter = new Filter();
  filter.initFilter();

  const applicant = new Applicant();
  applicant.initApplicant();
});
