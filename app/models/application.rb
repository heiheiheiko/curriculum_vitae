class Application < ActiveRecord::Base
  belongs_to :applicant
  has_one :address, as: :addressable, dependent: :destroy
end
