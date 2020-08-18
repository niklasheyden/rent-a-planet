class BookingsController < ApplicationController

  def new
    #raise
    @booking = Booking.new
    @planet = Planet.find(params[:planet_id])
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @planet = Planet.find(params[:planet_id])
    @booking.planet = @planet
    authorize @booking
    if @booking.save
      redirect_to planet_booking_path(@planet, @booking)
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  private
  def booking_params
    params.require(:booking).permit(:checkin_date, :checkout_date)
  end
end
