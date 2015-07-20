class UsersController < ApplicationController
  before_filter :require_user, only: [:show]

  def new
    @interest_options = Interest.all.map{ |u| [u.name, u.id] }
    @city_options = City.all.map{ |u| [u.name, u.id] }
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to home_path
    else
      flash.now[:error] = "Please fill in all fields."
      render action: "new"
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :password, :email)
  end
end