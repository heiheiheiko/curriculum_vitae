class Application < ApplicationRecord
  before_create :generate_auth_token

  belongs_to :applicant
  has_one :address, as: :addressable, dependent: :destroy
  has_one :job_advertisement, as: :informable, class_name: 'Website', dependent: :destroy

  def paragraphs
    letter.split("\r")
  end

  private
  def generate_auth_token
    self.auth_token = SecureRandom.hex
  end
end
