class CreateJoinTableFilmsStarships < ActiveRecord::Migration[5.2]
  def change
    create_join_table :films, :starships do |t|
      t.index :film_id
      t.index :starship_id
    end
  end
end

