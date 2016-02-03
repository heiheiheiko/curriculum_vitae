require 'rails_helper'

RSpec.describe ChronicleItem, type: :model do
  it { should have_one(:address).class_name('Address') }
  it { should have_many(:skills).class_name('Skill') }
  it { should belong_to(:applicant).class_name('Applicant') }
end

RSpec.describe Job, type: :model do
end

RSpec.describe Education, type: :model do
end

RSpec.describe Highlight, type: :model do
end
