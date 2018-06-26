class CreateSpecies < ActiveRecord::Migration[5.2]
  def change
    create_table :species do |t|

      t.string :name
      t.string :classification
      t.string :designation
      t.decimal :average_height
      t.string :skin_colors
      t.string :hair_colors
      t.string :eye_colors
      t.decimal :average_lifespan
      t.string :language
      t.string :homeworld
      t.string :url

      t.timestamps
    end
  end
end
