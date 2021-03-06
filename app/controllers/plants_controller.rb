class PlantsController < ApplicationController
  def index
    @search = Plant.search(params[:search])
    @plants = @search.page params[:page]
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
  
  def destroy
    @plant = Plant.find(params[:id])
    @plant.destroy

    respond_to do |format|
      format.html { redirect_to plants_url }
      format.json { head :no_content }
    end
  
  end
end
