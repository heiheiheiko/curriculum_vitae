class Address < ActiveRecord::Base
  belongs_to :addressable, polymorphic: true
  has_one :website, as: :linkable

  def to_s
    [name, street, "#{zip} #{city}"].compact.join(', ')
  end
end
