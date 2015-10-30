class Exercise < ActiveRecord::Base
  has_and_belongs_to_many :logs

  validates :name, :presence => true
  validates :duration, :presence => true
  validates :calories, :presence => true
end
