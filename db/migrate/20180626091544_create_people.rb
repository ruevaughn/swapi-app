class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people, force: true do |t|
      t.string :name
      t.float :height
      t.float :mass
      t.string :hair_color
      t.string :skin_color
      t.string :eye_color
      t.string :birth_year
      t.string :gender
      t.string :url
      # t.integer :planet_id, foreign_key: true

      t.timestamps
    end
    add_index :people, :id
    # add_index :people, :planet_id
  end
end
