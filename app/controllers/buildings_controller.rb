class BuildingsController < ApplicationController
    def index
        buildings = Building.all
        render json: BuildingsSerializer.new(buildings).to_serialized_json
    end

    def show
        building = Building.find(params[:id])
        render json: BuildingsSerializer.new(building).to_serialized_json
    end

    def create
        property = Property.find(params[:building_info][:property_id])
        building = property.buildings.new(building_params)
        building.save
        render json: BuildingsSerializer.new(building).to_serialized_json
    end

    private

    def building_params
      params.require(:building_info).permit(:name, :num_ground_windows, :num_high_windows, :num_doors, :num_vehicle_doors)
    end

end
