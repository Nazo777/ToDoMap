class MapsController < ApplicationController
  def index
    @list = List.new
    @lists = List.all
  end

  def create
    @list = List.new(list_params)
    @list.user_id = current_user.id
    if @list.save
      redirect_to maps_url
    else
      @lists = List.all
      render 'maps/index'
    end
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    list = List.find(params[:id])
    if list.user_id == current_user.id
      list.update(list_params)
      redirect_to maps_url
    end
  end
  
  def destroy
    list = List.find(params[:id])
    list.destroy
    redirect_to root_url
  end

  private
  def list_params
    params.require(:list).permit(:address,:latitude, :longitude, :title, :message)
  end
end
