class Person < ApplicationRecord
  belongs_to :homeworld
  belongs_to :species
  has_and_belongs_to_many :films
end
