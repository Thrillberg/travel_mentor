require 'spec_helper'

describe City do
  it { should have_many(:users) }
  it { should validate_presence_of(:name) }
end