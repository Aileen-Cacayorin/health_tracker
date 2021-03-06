class LogsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @logs = @user.logs
  end

  def new
    @user = User.find(params[:user_id])
    @log = Log.new
  end

  def create
    @user = User.find(params[:user_id])
    date = Date.today
    @log = Log.create(:date => date)
    @log.user = @user
    @log.save
    redirect_to user_log_path(@user, @log)

  end

  def show
    @user = User.find(params[:user_id])
    @log = Log.find(params[:id])
    @foods = @log.foods.paginate(:per_page => 10, :page => params[:page])

    @all_foods = Food.search(params[:search])

  end
end
