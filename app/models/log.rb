class Log < ActiveRecord::Base
  belongs_to :user
  has_many :meals
  has_many :workouts

  def calories_consumed
    return self.foods.sum(:calories)
  end
end
