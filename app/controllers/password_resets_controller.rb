class PasswordResetsController < ApplicationController
  def show
    user = User.find_by(token: params[:id])
    if user
      @token = params[:id]
    else
      redirect_to expired_token_path
    end
  end
end