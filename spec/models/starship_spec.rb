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

require 'rails_helper'

RSpec.describe Starship, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
