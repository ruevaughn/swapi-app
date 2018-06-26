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
