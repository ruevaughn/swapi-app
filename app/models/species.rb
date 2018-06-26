class Species < ApplicationRecord
  has_many :people, through: :people_species, class_name: "People"
  has_many :films, through: :films_species
end
