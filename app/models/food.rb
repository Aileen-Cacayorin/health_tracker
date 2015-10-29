class Food < ActiveRecord::Base
  belongs_to :log

  validates :name, :presence => true
  validates :quantity, :presence => true
  validates :calories, :presence => true
end
