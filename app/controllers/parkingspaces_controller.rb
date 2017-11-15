class ParkingspacesController < ApplicationController
    def index
        @parkingspaces = Parkingspaces.all
    end
  
  def new
      @parkingspaces = Parkingspaces.new
  end
 
  def create
    Parkingspaces.create(place_params)
    redirect_to root_path
  end

  private

  def parkingspace_params
    params.require(:place).permit(:name, :description, :address)
  end
  
end
