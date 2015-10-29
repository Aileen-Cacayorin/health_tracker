require 'rails_helper'

describe Food do
  it { should have_many :meals }
  it { should validate_presence_of :name }
  it { should validate_presence_of :quantity }
  it { should validate_presence_of :calories }

end
