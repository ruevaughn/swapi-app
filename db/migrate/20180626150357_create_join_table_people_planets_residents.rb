class CreateJoinTablePeoplePlanetsResidents < ActiveRecord::Migration[5.2]
  def change
    create_join_table :people, :planets do |t|
      t.index :person_id
      t.index :planet_id
    end
  end
end
