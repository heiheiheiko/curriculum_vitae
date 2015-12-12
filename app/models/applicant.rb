class Applicant < ActiveRecord::Base
  has_one :address, as: :addressable, dependent: :destroy
  has_many :images, as: :imageable, dependent: :destroy
  has_many :links, as: :linkable, dependent: :destroy
  has_many :chronicle_items, dependent: :destroy
end
