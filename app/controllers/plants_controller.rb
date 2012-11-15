class PlantsController < ApplicationController
  def index
    @plants = Plant.search(params[:search])
  end
  
  def show
    @plant = Plant.find(params[:id])
  end
  
  def new
    @plant = Plant.new
  end
  
  def edit
    @plant = Plant.find(params[:id])
  end
end
