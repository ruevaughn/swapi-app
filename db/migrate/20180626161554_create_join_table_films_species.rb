class CreateJoinTableFilmsSpecies < ActiveRecord::Migration[5.2]
  def change
    create_join_table :films, :species do |t|
      t.index :film_id
      t.index :species_id
    end
  end
end
