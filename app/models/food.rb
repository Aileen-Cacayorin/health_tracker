class Food < ActiveRecord::Base
  has_many :meals

  validates :name, :presence => true
  validates :quantity, :presence => true
  validates :calories, :presence => true
end
