class Information < ApplicationRecord
  belongs_to :informable, polymorphic: true
end
