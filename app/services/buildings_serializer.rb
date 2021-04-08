class BuildingsSerializer
    def initialize(building)
        @building = building
    end

    def to_serialized_json
        options = {
            methods: :cost,
            except: [:updated_at],
        }
        @building.to_json(options)
    end 
end