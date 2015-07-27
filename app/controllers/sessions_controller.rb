class SessionsController < ApplicationController
  before_action :require_user, only: [:destroy]

  def new
    redirect_to home_path if logged_in?
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to home_path
      flash[:success] = "You have successfully signed in!"
    else
      flash[:error] = "There is a problem with your email or password."
      redirect_to sign_in_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
    flash[:success] =  "You are signed out."
  end

end