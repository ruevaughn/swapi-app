# == Schema Information
#
# Table name: species
#
#  id               :bigint(8)        not null, primary key
#  average_height   :decimal(, )
#  average_lifespan :decimal(, )
#  classification   :string
#  designation      :string
#  eye_colors       :string
#  hair_colors      :string
#  homeworld        :string
#  language         :string
#  name             :string
#  skin_colors      :string
#  url              :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

FactoryBot.define do
  factory :species do
    name "MyString"
    classification "MyString"
    designation "MyString"
    average_height "9.99"
    skin_colors "MyString"
    hair_colors "MyString"
    eye_colors "MyString"
    average_lifespan 1.5
    homeworld ""
    language "MyString"
    people nil
    films nil
    url "MyString"
  end
end
