class Log < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :foods
  has_and_belongs_to_many :exercises

  def calories_consumed
    return self.foods.sum(:calories)
  end
end
