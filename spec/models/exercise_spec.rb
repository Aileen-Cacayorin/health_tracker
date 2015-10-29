require 'rails_helper'

describe Exercise do
  it { should belong_to :log }
  it { should validate_presence_of :name }
  it { should validate_presence_of :duration }
  it { should validate_presence_of :calories }
end
