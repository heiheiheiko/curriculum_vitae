require 'rails_helper'

RSpec.describe Information, type: :model do
  it { should belong_to(:informable) }
end

RSpec.describe Faq, type: :model do
  it { should belong_to(:informable) }
end

RSpec.describe Interest, type: :model do
  it { should belong_to(:informable) }
end

RSpec.describe Experience, type: :model do
  it { should belong_to(:informable) }
  it { should have_many(:chronicle_items).class_name('ChronicleItem') }
end
