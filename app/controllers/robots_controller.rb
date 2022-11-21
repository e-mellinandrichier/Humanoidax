class RobotsController < ApplicationController

  def index
    @robots = Robot.all
  end

  def new
  end

  def create
  end

end
