class CreateFilms < ActiveRecord::Migration[5.2]
  def change
    create_table :films do |t|
      t.integer :episode_id
      t.string :title
      t.string :url
      t.string :director
      t.string :producer
      t.string :release_date
      t.text :opening_crawl

      t.timestamps
    end
  end
end
