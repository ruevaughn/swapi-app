class Person < ApplicationRecord
  has_many :films, through: :people_films
  has_many :planets, through: :people_planets
  has_many :species, through: :people_species
  has_many :starships, through: :people_starships
  has_many :vehicles, through: :people_vehicles
  belongs_to :homeworld, class_name: "Planet", foreign_key: 'planet_id',

end
