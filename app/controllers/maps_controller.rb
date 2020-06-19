class MapsController < ApplicationController
  def index
    @list = List.new
    @lists = List.all
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to maps_url
    else
      @lists = List.all
      render 'maps/index'
    end
  end

  private
  def list_params
    params.require(:list).permit(:address,:latitude, :longitude, :title, :message)
  end
end
