class Property < ApplicationRecord
    has_many :buildings
    validates :name,           presence: true
    validates :fence_length,   presence: true

    def cost
        cost = fence_length*5
        self.buildings.each do |building|
            cost += building.cost
        end
        cost
    end

end
