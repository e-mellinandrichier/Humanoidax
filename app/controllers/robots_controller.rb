class RobotsController < ApplicationController

  before_action :set_robot, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR utility ILIKE :query OR description ILIKE :query"
      @robots = Robot.where(sql_query, query: "%#{params[:query]}%")
    else
      @robots = Robot.all
    end
    @bookings = Booking.all
  end

  def show
    @bookings = Booking.all

  end

  def new
    @robot = Robot.new
  end

  def create
    @robot = Robot.new(robot_params)
    @robot.user = current_user
    if @robot.save
      redirect_to robot_path(@robot)
    else
      render "new", status: :unprocessable_entity
    end
  end

  def destroy
    @robot.destroy
    # No need  app/views/restaurants/destroy.html.erb
    redirect_to robots_path, status: :see_other
  end

  def edit
  end

  def update
    @robot.update(robot_params)
    redirect_to robot_path(@robot)
  end

  private

  def robot_params
    params.require(:robot).permit(:name, :photo, :utility, :description)
  end

  def set_robot
    @robot = Robot.find(params[:id])
  end
end
