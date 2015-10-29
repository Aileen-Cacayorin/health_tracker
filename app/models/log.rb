class Log < ActiveRecord::Base
  belongs_to :user
  has_many :foods
  has_many :exercises

  def calories_consumed
    return self.foods.sum(:calories)
  end
end
