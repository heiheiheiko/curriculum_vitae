require 'rails_helper'

RSpec.describe ChronicleItemSkill, type: :model do
  it { should belong_to(:skill) }
  it { should belong_to(:chronicle_item) }
end
