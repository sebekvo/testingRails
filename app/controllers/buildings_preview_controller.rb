class BuildingsPreviewController < ApplicationController

  def index
    @buildings = Building.all
  end

  def show
    @rooms = Room.where(:building_id => params[:id])
  end

end
