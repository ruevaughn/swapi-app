# == Schema Information
#
# Table name: people
#
#  id         :bigint(8)        not null, primary key
#  birth_year :string
#  eye_color  :string
#  gender     :string
#  hair_color :string
#  height     :float
#  mass       :float
#  name       :string
#  skin_color :string
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Person < ApplicationRecord
  has_many :films, through: :people_films
  has_many :planets, through: :people_planets
  has_many :species, through: :people_species
  has_many :starships, through: :people_starships
  has_many :vehicles, through: :people_vehicles
  belongs_to :homeworld, class_name: "Planet", foreign_key: 'planet_id', inverse_of: :person_id

end
