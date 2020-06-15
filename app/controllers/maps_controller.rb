class MapsController < ApplicationController
  def index
    @map = List.new
    @maps = List.all
  end

  def create
    @map = List.new(list_params)
    if @map.save
      redirect_to maps_url
    else
      @maps = List.all
      render 'maps/index'
    end
  end

  private
  def list_params
    params.require(:list).permit(:address,:latitude, :longitude, :title, :message)
  end
end
