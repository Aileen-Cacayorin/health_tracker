class Exercise < ActiveRecord::Base
  belongs_to :log

  validates :name, :presence => true
  validates :duration, :presence => true
  validates :calories, :presence => true
end
