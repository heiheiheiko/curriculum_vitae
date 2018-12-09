class ApplicantsController < ApplicationController
  def show
    @applicant = load_applicant
    @applicant.interests.each { |i| i.extend_decorators }
  end

  private
  def load_applicant
    params[:id].present? ? Applicant.find(params[:id]) : Applicant.first
  end
end
