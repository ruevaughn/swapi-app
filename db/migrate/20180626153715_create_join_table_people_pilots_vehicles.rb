class CreateJoinTablePeoplePilotsVehicles < ActiveRecord::Migration[5.2]
  def change
     create_join_table :people, :vehicles do |t|
      t.index :person_id
      t.index :vehicle_id
    end
  end
end
