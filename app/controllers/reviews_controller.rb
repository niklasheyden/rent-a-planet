class ReviewsController < ApplicationController
   before_action :set_planet, only: [:new, :create]
   skip_before_action :authenticate_user!, only: [:new, :create, :destroy]


  def new
    @review = Review.new
    @planet = Planet.find(params[:planet_id])
    authorize @review
  end

  def create
     @review = Review.new(review_params)
    @review.user = current_user
    @planet = Planet.find(params[:planet_id])
    @review.planet = @planet
    authorize @review
    if @review.save
      redirect_to planet_path(@planet)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to planet_path(@review.planet)
  end

  private

  def set_planet
    @planet = Planet.find(params[:planet_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end


end
