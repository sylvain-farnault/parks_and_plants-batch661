class PlantTagsController < ApplicationController

  # get 'plants/:plant_id/plant_tags/new
  def new
    @plant_tag = PlantTag.new
    @plant = Plant.find(params[:plant_id])
  end

  # POST 'plants/:plant_id/plant_tags
  def create
    @plant_tag = PlantTag.new(plant_tag_params)
    @plant = Plant.find(params[:plant_id])
    @plant_tag.plant = @plant

    if @plant_tag.save
      redirect_to garden_path(@plant.garden)
    else
      render :new
    end
  end

  private

  def plant_tag_params
    params.require(:plant_tag).permit(:tag_id)

  end


end
