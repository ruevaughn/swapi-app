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

class Species < ApplicationRecord
  has_many :people, through: :people_species, class_name: "People"
  has_many :films, through: :films_species

  def self.last_received_page
    0
  end

  def self.has_all_data?
    false
  end

end
