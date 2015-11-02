class FoodsController < ApplicationController
  def new
    @food = Food.new
  end

  def create
    @log = Log.find(food_params[:log_id])
    @food = Food.create(:name => food_params[:name], :quantity => food_params[:quantity], :calories => food_params[:calories])
    @log.foods << @food
    respond_to do |format|
    format.html { redirect_to :back }
    format.js
    end
  end

  def update
    @log = Log.find(params[:log_id])
    @food = Food.find(params[:id])

    @log.foods << @food
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
    params.require(:food).permit(:name, :quantity, :calories, :log_id)
  end

end
