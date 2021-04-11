class Property < ApplicationRecord
    has_many :buildings
    validates :name,           presence: true
    validates :fence_length,   presence: true

    def cost
        cost = fence_cost
        self.buildings.each do |building|
            cost += building.cost
        end
        cost
    end

    def fence_cost
        fence_length*5
    end

end
