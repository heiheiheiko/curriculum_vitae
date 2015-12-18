class Experience < ActiveRecord::Base
  has_and_belongs_to_many :chronicle_items
end
