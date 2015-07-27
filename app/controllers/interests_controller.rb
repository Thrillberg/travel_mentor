class InterestsController < ApplicationController
  def index
    @interests = Interest.all
  end

  def show
    @interest = Interest.find(params[:id])
  end

  def create
    @interest = Interest.new(interest_params)
    if @interest.save
      redirect_to interests_path
    else
      flash.now[:error] = "Please fill in a name."
      render action: "new"
    end
  end

  private

  def interest_params
    params.require(:interest).permit(:name)
  end
end