class RobotsController < ApplicationController
  def index
    @robots = Robot.all
  end

  def new
    @robot = Robot.new
  end

  def create
    @robot = Robot.new(robot_params)
    if @robot.save
      redirect_to robots_path
    else
      render "new"
    end
  end

  private

  def robot_params
    params.require(:robot).permit(:name, :image, :utility, :description)
  end
end
