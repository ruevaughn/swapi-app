class CreateJoinTablePeopleSpecies < ActiveRecord::Migration[5.2]
  def change
    create_join_table :people, :species do |t|
      t.index :person_id
      t.index :species_id
    end
  end
end
