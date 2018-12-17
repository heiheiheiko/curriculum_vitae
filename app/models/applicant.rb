class Applicant < ApplicationRecord
  has_one :address, as: :addressable, dependent: :destroy
  has_many :images, as: :informable, dependent: :destroy
  has_many :websites, as: :informable, dependent: :destroy
  has_many :faqs, as: :informable, dependent: :destroy
  has_many :interests, as: :informable, dependent: :destroy
  has_many :chronicle_items, dependent: :destroy
  
  translates :slogan, :family_status

  def skill_type_groups
    @skill_overview ||= SkillOverview.new(self).skill_type_groups
  end
end
