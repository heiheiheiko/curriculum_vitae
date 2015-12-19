class Applicant < ActiveRecord::Base
  has_one :address, as: :addressable, dependent: :destroy
  has_many :images, as: :linkable, dependent: :destroy
  has_many :websites, as: :linkable, dependent: :destroy
  has_many :faqs, as: :informable, dependent: :destroy
  has_many :interests, as: :informable, dependent: :destroy

  has_many :chronicle_items, dependent: :destroy
end
