class Vehicle < ApplicationRecord
  has_many :films, through: :films_vehicles
  has_many :pilots,
           through: :people_vehicles,
           source: :people,
           class_name: "People"
end
