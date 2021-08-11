class PlantsController < ApplicationController

  # POST 'gardens/:garden_id/plants'
  def create
    @plant = Plant.new(plant_params)
    @garden = Garden.find(params[:garden_id])
    @plant.garden = @garden

    if @plant.save
      redirect_to @garden
    else
      render 'gardens/show'
    end
  end

  # DELETE 'plants/:id'
  def destroy
    @plant = Plant.find(params[:id])
    @plant.destroy
    redirect_to @plant.garden
  end


  private

  def plant_params
    params.require(:plant).permit(:name, :image_url)
  end


end
