class PlanetsController < ApplicationController
  def new
    @planet = Planet.new
  end

  def create
    @planet = Planet.new(planet_params)
    authorize @planet
    if @planet.save
      redirect_to planet_path(@planet)
    else
      render :new
    end
  end

  private

  def planet_params
    params.require(:planet).permit(:name, :location, :price)
  end
end
