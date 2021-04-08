class Building < ApplicationRecord
  belongs_to :property

  def cost
    cost = 1000
    cost += 160 * num_ground_windows
    cost += 50 * num_high_windows
    cost += 100 * num_doors
    cost += 200 * num_vehicle_doors
  end

end
