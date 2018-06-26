class Starship < ApplicationRecord
  has_many :pilots, through: :people_pilots, class_name: "Person"
  has_many :films, through: :films_starships
end
