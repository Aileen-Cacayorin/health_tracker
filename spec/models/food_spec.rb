require 'rails_helper'

describe Food do
  it { should belong_to :log }
  it { should validate_presence_of :name }
  it { should validate_presence_of :quantity }
  it { should validate_presence_of :calories }

end
