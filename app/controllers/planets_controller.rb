class PlanetsController < ApplicationController
before_action :set_planet, only: [:show]
skip_before_action :authenticate_user!, only: :show


  def index
    @planets = policy_scope(Planet)
  end

  def new
    @planet = Planet.new
    authorize @planet
  end

  def create
    @planet = Planet.new(planet_params)
    @planet.user = current_user
    authorize @planet
    if @planet.save
      redirect_to planet_path(@planet), notice: 'Planet was successfully created.'
    else
      render :new
    end
  end

  def show
    authorize @planet
  end

  private

  def planet_params
    params.require(:planet).permit(:name, :location, :price, :photo)
  end

  def set_planet
    @planet = Planet.find(params[:id])
  end
end
