require 'rails_helper'

RSpec.describe Application, type: :model do
  it { should have_one(:address).class_name('Address') }
  it { should belong_to(:applicant) }
end
