class Information < ApplicationRecord
  belongs_to :informable, polymorphic: true

  translates :title, :description

  def extend_decorators
    case information_type
    when "personal"
      extend Personal
    when "professional"
      extend Professional
    end
  end
end
