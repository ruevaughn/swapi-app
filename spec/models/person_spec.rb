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

require 'rails_helper'

RSpec.describe Person do
  describe ('valid') do
    it "is valid with a name" do
      name = Faker::Name
      person = build(:person, name: name)
      expect(person).to be_valid
    end

    it "is invalid without a name" do
      person = build(:person, name: nil)
      expect(person).to_not be_valid
    end
  end
end
