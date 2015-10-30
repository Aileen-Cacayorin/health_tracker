require 'rails_helper'

describe Log do
  it { should belong_to :user}
  it { should have_and_belong_to_many :exercises }
  it { should have_and_belong_to_many :foods }  
end
