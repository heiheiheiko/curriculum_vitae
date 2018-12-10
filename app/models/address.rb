class Address < ApplicationRecord
  belongs_to :addressable, polymorphic: true
  has_one :website, as: :informable

  def to_s
    [name, street, "#{zip} #{city}"].compact.join(', ')
  end
end
