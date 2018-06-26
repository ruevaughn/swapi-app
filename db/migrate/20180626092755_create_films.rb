class CreateFilms < ActiveRecord::Migration[5.2]
  def change
    create_table :films do |t|
      t.string :title
      t.string :url
      t.string :director
      t.string :producer
      t.datetime :release_date
      t.text :opening_crawl

      t.timestamps
    end
  end
end
