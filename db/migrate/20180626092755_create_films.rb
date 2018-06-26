class CreateFilms < ActiveRecord::Migration[5.2]
  def change
    create_table :films do |t|
      t.string :title
      t.integer :episode_id
      t.text :opening_crawl
      t.string :url
      t.string :director
      t.string :producer
      t.string :release_date
      t.has_and_belongs_to_many :people
      t.has_and_belongs_to_many :planets
      t.has_and_belongs_to_many :starships
      t.has_and_belongs_to_many :vehicles
      t.has_and_belongs_to_many :species

      t.timestamps
    end
  end
end
