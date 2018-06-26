# == Schema Information
#
# Table name: starships
#
#  id                     :bigint(8)        not null, primary key
#  MGLT                   :string
#  cargo_capacity         :float
#  consumables            :string
#  cost_in_credits        :decimal(, )
#  crew                   :string
#  hyerdrive_rating       :decimal(, )
#  integer                :string
#  length                 :decimal(, )
#  manufacturer           :string
#  max_atmosphering_speed :string
#  model                  :string
#  name                   :string
#  passengers             :float
#  starship_class         :string
#  url                    :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class Starship < ApplicationRecord
  has_many :pilots, through: :people_pilots, class_name: "Person"
  has_many :films, through: :films_starships
end
