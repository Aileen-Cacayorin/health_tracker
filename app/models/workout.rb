class Workout < ActiveRecord::Base
  belongs_to :exercise
  belongs_to :log
end
