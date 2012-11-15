class PlantsController < ApplicationController
  def index
    @plants = Plant.search(params[:search])
  end
  
  def show
    @plant = Plant.find(params[:id])
    
    respond_to do |format|
      format.html
    end
  end
  
  def new
    @plant = Plant.new
  end
  
  def create
    @plant = Plant.new(params[:plant])
    if @plant.save
      respond_to do |format|
        format.html { redirect_to plants_path }
      end
    else
      render :action => "new"
    end
  end
  
  def edit
    @plant = Plant.find(params[:id])
  end
end
