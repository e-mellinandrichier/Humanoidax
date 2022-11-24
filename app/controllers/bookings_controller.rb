class BookingsController < ApplicationController
  before_action :set_booking, only: [:destroy, :show]
  before_action :set_robot, only: [:new, :create, :edit, :update]
  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.robot = Robot.find(params[:robot_id])
    if @booking.save
      redirect_to robot_path(@robot)
    else
      render "new", status: :unprocessable_entity
    end
  end

  def destroy
    @booking = set_booking
    @booking.destroy
    # No need  app/views/restaurants/destroy.html.erb
    # redirect_to robot_bookings_path, status: :see_other
    redirect_to robot_path
  end

  def edit
  end

  def update

  end

  private

  def booking_params
    params.require(:booking).permit(:date_first, :date_end)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_robot
    @robot = Robot.find(params[:robot_id])
  end
end
