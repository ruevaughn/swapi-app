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

require 'rails_helper'

RSpec.describe Species, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
