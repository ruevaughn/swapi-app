class CreateJoinTablePeoplePilotsStarships < ActiveRecord::Migration[5.2]
  def change
     create_join_table :people, :starships do |t|
      t.index :person_id
      t.index :starship_id
    end
  end
end
