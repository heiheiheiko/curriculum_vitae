require 'rails_helper'

RSpec.describe ChronicleItem, type: :model do
  it { should have_one(:address).class_name('Address') }
  it { should have_many(:images).class_name('Image') }
  it { should have_many(:links).class_name('Link') }
  it { should have_many(:experiences).class_name('Information') }
  it { should belong_to(:applicant).class_name('Applicant') }
end
