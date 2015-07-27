class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
  end

  def create
    @city = City.new(city_params)
    if @city.save
      redirect_to cities_path
    else
      flash.now[:error] = "Please fill in a name."
      render action: "new"
    end
  end

  private

  def city_params
    params.require(:city).permit(:name)
  end
end