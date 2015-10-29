require 'rails_helper'

describe Log do
  it { should belong_to :user}
  it { should have_many :meals }
  it { should have_many :workouts }  
end
