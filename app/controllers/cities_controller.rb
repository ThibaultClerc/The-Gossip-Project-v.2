class CitiesController < ApplicationController
  def show
    @city = City.find(params[:id])
    @gossips_of_city = @city.gossips
    
  end
end
