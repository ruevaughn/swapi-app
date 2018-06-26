# == Schema Information
#
# Table name: planets
#
#  id              :bigint(8)        not null, primary key
#  climate         :string
#  diameter        :float
#  gravity         :string
#  name            :string
#  orbital_period  :float
#  population      :string
#  references      :string
#  rotation_period :float
#  surface_water   :float
#  terrain         :string
#  url             :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Planet < ApplicationRecord
has_many :films, through: :film_planets
has_many :residents,
          through: :people_planets,
          source: :people,
          class_name: "Person"
has_one :person, inverse_of: :homeworld
end
