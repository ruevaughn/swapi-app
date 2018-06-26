class Planet < ApplicationRecord
has_many :films, through: :film_planets
has_many :residents,
          through: :people_planets,
          source: :people,
          class_name: "Person"
has_one :person, inverse_of: :homeworld
end
