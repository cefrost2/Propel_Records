class LocationsController < ApplicationController

def index
	@locations = Location.all
end

def show
  @location = Location.find(params[:id])
end

def new
	@location = Location.new
end


# POST /widgets
  # POST /widgets.json
  def create
    @location = Location.new(location_params)

    respond_to do |format|
      if @location.save
        format.html { redirect_to @location, notice: 'Location was successfully created.' }
        format.json { render :show, status: :created, location: @location }
      else
        format.html { render :new }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def location_params
      params.require(:location).permit(:description, :address1, :address2, :mail_stop, :city, :state, :zip)
    end


end
