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

require 'rails_helper'

RSpec.describe Planet, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
