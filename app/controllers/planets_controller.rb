class PlanetsController < ApplicationController
before_action :set_planet, only: [:show]
def index
  @planets = policy_scope(Planet)
end

def new
  @planet = Planet.new
  authorize @planet
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

  def show
  end

  private

  def planet_params
    params.require(:planet).permit(:name, :location, :price)
  end
  def set_planet
    @planet = Planet.find(params[:id])
  end
end
