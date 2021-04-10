class Building < ApplicationRecord
  belongs_to :property
  validates :name,                 presence: true
  validates :num_ground_windows,   presence: true
  validates :num_high_windows,     presence: true
  validates :num_doors,            presence: true
  validates :num_vehicle_doors,    presence: true


  def cost
    cost = 1000
    cost += 160 * num_ground_windows
    cost += 50 * num_high_windows
    cost += 100 * num_doors
    cost += 200 * num_vehicle_doors
  end

end
