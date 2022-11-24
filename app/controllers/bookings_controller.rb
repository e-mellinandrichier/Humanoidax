class BookingsController < ApplicationController

  before_action :set_booking, only: [:edit, :update, :destroy]
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      render "new", status: :unprocessable_entity
    end
  end

  def destroy
    @booking.destroy
    # No need  app/views/restaurants/destroy.html.erb
    redirect_to bookings_path, status: :see_other
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:date_first, :date_end)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
