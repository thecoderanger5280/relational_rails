require 'rails_helper'

RSpec.describe LegoSet, type: :model do
  it {should have_many :pieces}
end