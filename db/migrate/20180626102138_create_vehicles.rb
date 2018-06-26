class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|

      t.string :name
      t.string :model
      t.string :manufacturer
      t.float :cost_in_credits
      t.float :length
      t.float :max_atmosphering_speed
      t.integer :crew
      t.integer :passengers
      t.string :url
      t.float :cargo_capacity
      t.string :consumables
      t.string :vehicle_class

      t.timestamps
    end
  end
end
