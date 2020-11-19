class PlantTagsController < ApplicationController
  def new
    @plant_tag = PlantTag.new
    @plant = Plant.find(params[:plant_id])
    @tags = Tag.all
  end

  def create
    # What does a plant tag need?
    @plant = Plant.find(params[:plant_id])
    @tags = Tag.where(id: params[:plant_tag][:tag])
    @tags.each do |tag|
      plant_tag = PlantTag.new(tag: tag, plant: @plant)
      plant_tag.save
    end
    redirect_to garden_path(@plant.garden)
  end


end
