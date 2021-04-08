class BuildingsController < ApplicationController
    def index
        buildings = Building.all
        render json: BuildingsSerializer.new(buildings).to_serialized_json
    end

    def show
        building = Building.find(params[:id])
        render json: BuildingsSerializer.new(building).to_serialized_json
    end
end
