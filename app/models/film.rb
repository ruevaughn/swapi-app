# == Schema Information
#
# Table name: films
#
#  id            :bigint(8)        not null, primary key
#  director      :string
#  opening_crawl :text
#  producer      :string
#  release_date  :string
#  title         :string
#  url           :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  episode_id    :integer
#

class Film < ApplicationRecord
  has_many :characters,
           through: :films_people,
           source: :people,
           class_name: "Person"
  has_many :planets, through: :films_planets
  has_many :species, through: :films_species
  has_many :starships, through: :films_starships
  has_many :vehicles, through: :films_vehicles
end
