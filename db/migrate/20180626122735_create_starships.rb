class CreateStarships < ActiveRecord::Migration[5.2]
  def change
    create_table :starships do |t|

      t.string :name, unique: true
      t.string :model
      t.string :manufacturer
      t.decimal :cost_in_credits
      t.decimal :length
      t.string :max_atmosphering_speed
      t.string :crew
      t.float :passengers
      t.float :cargo_capacity
      t.string :consumables
      t.float :hyerdrive_rating, scale: 1
      t.string :MGLT
      t.string :integer
      t.string :starship_class
      t.string :url

      t.timestamps
    end
  end
end
