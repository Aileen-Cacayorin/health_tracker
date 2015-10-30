require 'rails_helper'

describe Food do
  it { should have_and_belong_to_many :logs }
  it { should validate_presence_of :name }
  it { should validate_presence_of :quantity }
  it { should validate_presence_of :calories }

end
