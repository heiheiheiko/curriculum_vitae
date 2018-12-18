class ChronicleItem < ApplicationRecord
  has_one :address, as: :addressable, dependent: :destroy
  belongs_to :applicant

  has_many :chronicle_item_skills
  has_many :skills, through: :chronicle_item_skills

  translates :title, :description, :graduation

  def self.address_icon_font
    'fas'
  end

  def time_range
    @period ||= ::TimeRange.new(started_at, ended_at)
  end

  def card_body?
    [description_items, skills].compact.flatten.present?
  end

  # decorator
  def description_items
    description ? description.split(';') : []
  end

  def card_title
    position ? I18n.t(position, scope: 'enums.chronicle_item.position') : title
  end
end
