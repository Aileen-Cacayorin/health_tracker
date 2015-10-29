class Exercise < ActiveRecord::Base
  has_many :workouts

  validates :name, :presence => true
  validates :duration, :presence => true
  validates :calories, :presence => true
end
