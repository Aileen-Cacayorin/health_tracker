class FoodsController < ApplicationController
  def new
    @log = Log.find(params[:log_id])
    @food = Food.new
  end

  def create
    @log = Log.find(params[:log_id])
    @food = Food.create(food_params)
    @food.log = @log
    @food.save
    respond_to do |format|
    format.html { redirect_to :back }
    format.js
    end
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    respond_to do |format|
    format.html { redirect_to :back }
    format.js
    end
  end

private
  def food_params
    params.require(:food).permit(:name, :quantity, :calories)
  end

end
