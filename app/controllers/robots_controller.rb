class RobotsController < ApplicationController
  def index
    @robots = Robot.all
  end

  def show
    @robot = Robot.find(params[:id])
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

  private

  def robot_params
    params.require(:robot).permit(:name, :image, :utility, :description)
  end
end
