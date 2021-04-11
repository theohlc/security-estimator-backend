class PropertiesSerializer
    def initialize(property)
        @property = property
    end

    def to_serialized_json
        options = {
            include: {
                buildings: {
                    methods: :cost 
                }
            },
            except: [:updated_at, :created_at],
            methods: [:cost, :fence_cost]
        }
        @property.to_json(options)
    end 
end