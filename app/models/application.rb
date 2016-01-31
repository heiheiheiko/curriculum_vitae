class Application < ActiveRecord::Base
  belongs_to :applicant
  has_one :address, as: :addressable, dependent: :destroy
  before_create :generate_auth_token

  private
  def generate_auth_token
    self.auth_token = SecureRandom.hex
  end
end
