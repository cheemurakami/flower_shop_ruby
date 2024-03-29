class FlowersController < ApplicationController
  def home
    render :home
  end

  def index
    @flowers = Flower.all
    render :index
  end

  def new
    @flower = Flower.new
    render :new
  end

  def show
    @flower = Flower.find(params[:id])
  end

  def create
    @flower = Flower.create!(flower_params)
    redirect_to flowers_path
  end

  def edit
    @flower = Flower.find(params[:id])
  end

  def update
    @flower = Flower.find(params[:id])
    @flower.update!(flower_params)
    redirect_to flowers_path
  end

  def destroy
    @flower = Flower.find(params[:id])
    @flower.destroy   
    redirect_to flowers_path
  end

  private
  def flower_params
    params.require(:flower).permit(:title, :content, :price)
  end

end