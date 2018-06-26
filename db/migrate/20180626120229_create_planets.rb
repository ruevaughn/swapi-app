class CreatePlanets < ActiveRecord::Migration[5.2]
  def change
    create_table :planets do |t|
      t.string :name
      t.float :rotation_period
      t.float :orbital_period
      t.float :diameter
      t.string :climate
      t.string :gravity
      t.string :terrain
      t.float :surface_water
      t.string :population
      t.string :references
      t.string :url

      t.timestamps
    end
  end
end
