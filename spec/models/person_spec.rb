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

require 'rails_helper'

RSpec.describe Person, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
