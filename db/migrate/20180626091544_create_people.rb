class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name
      t.string :height
      t.string :mass
      t.string :hair_color
      t.string :skin_color
      t.string :eye_color
      t.string :birth_year
      t.string :gender
      t.string :url
      # t.belongs_to :homeworld, foreign_key: true
      # t.references :films
      # t.belongs_to :species, foreign_key: true
      # t.references :vehicles
      # t.references :starships

      t.timestamps
    end
  end
end
