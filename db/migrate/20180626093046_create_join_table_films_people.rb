class CreateJoinTableFilmsPeople < ActiveRecord::Migration[5.2]
  def change
    create_join_table :films, :people do |t|
      t.index :film_id
      t.index :person_id
    end
  end
end
