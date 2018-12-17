class Information < ApplicationRecord
  belongs_to :informable, polymorphic: true

  translates :title, :description
end
