class CreateBuildings < ActiveRecord::Migration[6.1]
  def change
    create_table :buildings do |t|
      t.integer :num_ground_windows
      t.integer :num_high_windows
      t.string :name
      t.integer :num_doors
      t.integer :num_vehicle_doors
      t.references :property, null: false, foreign_key: true

      t.timestamps
    end
  end
end
