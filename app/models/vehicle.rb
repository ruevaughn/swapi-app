# == Schema Information
#
# Table name: vehicles
#
#  id                     :bigint(8)        not null, primary key
#  cargo_capacity         :float
#  consumables            :string
#  cost_in_credits        :float
#  crew                   :integer
#  length                 :float
#  manufacturer           :string
#  max_atmosphering_speed :float
#  model                  :string
#  name                   :string
#  passengers             :integer
#  url                    :string
#  vehicle_class          :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class Vehicle < ApplicationRecord
  has_many :films, through: :films_vehicles
  has_many :pilots,
           through: :people_vehicles,
           source: :people,
           class_name: "People"
end
