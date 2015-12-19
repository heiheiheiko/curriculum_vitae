require 'rails_helper'

RSpec.describe Link, type: :model do
  it { should belong_to(:linkable) }
end

RSpec.describe Image, type: :model do
  it { should belong_to(:linkable) }
end

RSpec.describe Website, type: :model do
  it { should belong_to(:linkable) }
end
