class ChronicleItem < ActiveRecord::Base
  has_one :address, as: :addressable, dependent: :destroy
  has_many :images, as: :linkable, dependent: :destroy
  has_many :links, as: :linkable, dependent: :destroy
  belongs_to :applicant

  has_many :chronicle_item_informations
  has_many :experiences, through: :chronicle_item_informations, source: :information

  def period
    start_date =  I18n.l started_at, format: '%m/%Y'
    end_date = ended_at ? I18n.l(ended_at, format: '%m/%Y') : 'heute'
    "#{start_date} - #{end_date}"
  end

  def ended_at_extended
    ended_at ? ended_at + 1.month : Date.current
  end

  def card_title
    position ? I18n.t(position, scope: 'enums.chronicle_item.position') : title
  end

  def card_body?
    [description_items, experiences].compact.flatten.present?
  end

  def description_items
    description ? description.split(';') : []
  end
end
