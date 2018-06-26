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
#  hyerdrive_rating       :float
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

FactoryBot.define do
  factory :starship do
    name "MyString"
    model "MyString"
    manufacturer "MyString"
    cost_in_credits "9.99"
    length "9.99"
    max_atmosphering_speed "MyString"
    crew "MyString"
    passengers 1.5
    cargo_capacity 1.5
    consumables "MyString"
    hyerdrive_rating "9.99"
    MGLT "MyString"
    integer "MyString"
    starship_class "MyString"
    pilots nil
    films nil
    url "MyString"
  end
end
