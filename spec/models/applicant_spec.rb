require 'rails_helper'

RSpec.describe Applicant, type: :model do
  it { should have_one(:address).class_name('Address') }
  it { should have_many(:images).class_name('Image') }
  it { should have_many(:links).class_name('Link') }
  it { should have_many(:chronicle_items).class_name('ChronicleItem') }
  it { should have_many(:faqs).class_name('Faq') }
  it { should have_many(:interests).class_name('Interest') }
end
