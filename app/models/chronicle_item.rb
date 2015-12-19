class ChronicleItem < ActiveRecord::Base
  has_one :address, as: :addressable, dependent: :destroy
  has_many :images, as: :linkable, dependent: :destroy
  has_many :links, as: :linkable, dependent: :destroy
  belongs_to :applicant

  has_many :chronicle_item_informations
  has_many :experiences, through: :chronicle_item_informations, source: :information, source_type: 'Experience'
end
