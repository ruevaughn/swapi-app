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

FactoryBot.define do
  factory :vehicle do
    name "MyString"
    model "MyString"
    manufacturer "MyString"
    cost_in_credits 1.5
    length 1.5
    max_atmosphering_speed 1.5
    crew 1
    passengers 1
    url "MyString"
    cargo_capacity 1.5
    consumables "MyString"
    vehicle_class "MyString"
    # pilots ""
    # films nil
  end
end
