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
