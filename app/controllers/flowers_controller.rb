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

  def show
    @flower = Flower.find(params[:id])
  end

  def create
    @flower = Flower.create!(flower_params)
    redirect_to flowers_path
  end

  def edit
    @flower = Flower.find(params[:id])
    redirect_to flower_path
  end

  def update
    @flower = Flower.find(params[:id])
    render :edit
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