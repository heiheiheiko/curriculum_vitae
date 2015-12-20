class Address < ActiveRecord::Base
  belongs_to :addressable, polymorphic: true

  def to_s
    [name, street, "#{zip} #{city}"].compact.join(', ')
  end
end
