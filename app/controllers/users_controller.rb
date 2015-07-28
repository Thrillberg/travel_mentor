class UsersController < ApplicationController
  before_filter :require_user, only: [:show]

  def index
    @users = User.all
    @cities = City.all
    @interests = Interest.all
    @interest = Interest.new
    @city = City.new
  end

  def new
    @user = User.new
    @interest_options = Interest.all.map{ |u| [u.name, u.id] }
    @city_options = City.all.map{ |u| [u.name, u.id] }
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Thank you for registering with Travel Mentor."
      redirect_to home_path
    else
      flash[:error] = "Please fill in all fields."
      redirect_to register_path
    end
  end

  def show
    @user = User.find(params[:id])
    @conversation = Conversation.between(current_user, @user)[0]
    @message = Message.new
  end

  def edit
    @user = User.find(params[:id])
    @interest_options = Interest.all.map{ |u| [u.name, u.id] }
    @city_options = City.all.map{ |u| [u.name, u.id] }
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "Your profie was updated."
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :password, :email, interest_ids: [], city_ids:[])
  end
end