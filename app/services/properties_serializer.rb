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
            except: [:updated_at],
        }
        @property.to_json(options)
    end 
end