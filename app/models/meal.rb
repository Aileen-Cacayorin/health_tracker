class Meal < ActiveRecord::Base
  belongs_to :food
  belongs_to :log
end
