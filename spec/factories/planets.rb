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

FactoryBot.define do
  factory :planet do
    name "MyString"
    rotation_period 1.5
    orbital_period 1.5
    diameter 1.5
    climate "MyString"
    gravity "MyString"
    terrain "MyString"
    surface_water 1.5
    population "MyString"
    residents nil
    films "MyString"
    references "MyString"
    url "MyString"
  end
end
