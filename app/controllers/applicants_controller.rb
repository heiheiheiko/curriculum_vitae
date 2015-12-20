class ApplicantsController < ApplicationController
  def show
    @applicant = load_applicant
    @applicant.chronicle_items.each { |ci| ci.extend ChronicleItemDecorator }
  end

  private
  def load_applicant
    params[:id].present? ? Applicant.find(params[:id]) : Applicant.first
  end
end
