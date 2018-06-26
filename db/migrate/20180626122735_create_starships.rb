class CreateStarships < ActiveRecord::Migration[5.2]
  def change
    create_table :starships do |t|
      t.string :name
      t.string :model
      t.string :manufacturer
      t.decimal :cost_in_credits
      t.decimal :length
      t.string :max_atmosphering_speed
      t.string :crew
      t.float :passengers
      t.float :cargo_capacity
      t.string :consumables
      t.decimal :hyerdrive_rating
      t.string :MGLT
      t.string :integer
      t.string :starship_class
      t.string :url

      t.timestamps
    end
  end
end
