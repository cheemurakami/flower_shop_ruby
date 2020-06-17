class FlowersController < ApplicationController
  def home
    render :home
  end

  def index
    @flowers = Flower.all
    render :index
  end

  def new
    @flowers = Flower.new
    render :new
  end

  def create
    @flower = Flower.create!(flower_params)
    redirect_to flowers_path
  end

  private
  def flower_params
    params.require(:flower).permit(:title)
  end

end