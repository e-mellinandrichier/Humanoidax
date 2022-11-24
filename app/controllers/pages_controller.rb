class PagesController < ApplicationController
  skip_before_action :configure_permitted_parameters, only: :home
  def home
  end

  def index
    @user = current_user
    @robots = Robot.all
    @bookings = Booking.all
  end
end
