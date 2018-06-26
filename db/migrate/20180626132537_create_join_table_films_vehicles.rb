class CreateJoinTableFilmsVehicles < ActiveRecord::Migration[5.2]
  def change
    create_join_table :films, :vehicles do |t|
      t.index :film_id
      t.index :vehicle_id
    end
  end
end
