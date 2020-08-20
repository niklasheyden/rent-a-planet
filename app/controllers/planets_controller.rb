class PlanetsController < ApplicationController
before_action :set_planet, only: [:show, :edit, :update, :destroy]
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

  def edit
    authorize @planet
  end

  def update
    authorize @planet
    if @planet.update(planet_params)
      redirect_to planet_path(@planet), notice: 'Planet was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @planet.destroy
    redirect_to planets_path, notice: 'Planet was successfully destroyed.'
    authorize @planet
  end

  def show
    authorize @planet
  end

  private

  def planet_params
    params.require(:planet).permit(:name, :location, :price, :description, photos: [])
  end

  def set_planet
    @planet = Planet.find(params[:id])
  end
end
