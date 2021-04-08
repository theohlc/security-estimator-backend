class PropertiesController < ApplicationController
    def index
        properties = Property.all
        render json: PropertiesSerializer.new(properties).to_serialized_json
    end

    def show
        property = Property.find(params[:id])
        render json: PropertiesSerializer.new(property).to_serialized_json
    end
end
