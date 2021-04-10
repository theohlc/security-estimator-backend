class PropertiesController < ApplicationController
    def index
        properties = Property.all
        render json: PropertiesSerializer.new(properties).to_serialized_json
    end

    def show
        property = Property.find(params[:id])
        render json: PropertiesSerializer.new(property).to_serialized_json
    end

    def create
        property = Property.new(property_params)
        property.save
        render json: PropertiesSerializer.new(property).to_serialized_json
    end

    def destroy
        property = Property.find(params[:id])
        property.destroy
    end

    private

    def property_params
      params.require(:property_info).permit(:name, :fence_length, :owner)
    end

end
