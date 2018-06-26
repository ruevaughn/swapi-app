class CreateJoinTablePeopleFilms < ActiveRecord::Migration[5.2]
  def change
    create_join_table :characters, :films do |t|
      t.integer :film_id
      t.index :film_id
      t.integer :person_id
      t.index :person_id
  end
end
