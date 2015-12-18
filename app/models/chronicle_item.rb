class ChronicleItem < ActiveRecord::Base
  has_one :address, as: :addressable, dependent: :destroy
  has_many :images, as: :imageable, dependent: :destroy
  has_many :links, as: :linkable, dependent: :destroy
  belongs_to :applicant

  has_and_belongs_to_many :experiences
end
