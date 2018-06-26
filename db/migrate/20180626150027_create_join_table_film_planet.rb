class CreateJoinTableFilmPlanet < ActiveRecord::Migration[5.2]
  def change
    create_join_table :films, :planets do |t|
      t.index :film_id
      t.index :planet_id
    end
  end
end
