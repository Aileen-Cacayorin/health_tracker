require 'rails_helper'

describe Exercise do
  it { should have_many :workouts }
  it { should validate_presence_of :name }
  it { should validate_presence_of :duration }
  it { should validate_presence_of :calories }
end
