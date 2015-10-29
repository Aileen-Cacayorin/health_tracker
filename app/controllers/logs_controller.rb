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
    @log = Log.find(params[:id])
    @foods = @log.foods
  end
end
