require 'rails_helper'

describe Log do
  it { should belong_to :user}
  it { should have_many :exercises }
  it { should have_many :foods }  
end
