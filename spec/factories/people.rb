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
# Indexes
#
#  index_people_on_id  (id)
#

FactoryBot.define do
  factory :person do
    name "MyString"
    height "MyString"
    mass "MyString"
    hair_color "MyString"
    skin_color "MyString"
    eye_color "MyString"
    birth_year "MyString"
    gender "MyString"
    url "MyString"
  end
end
