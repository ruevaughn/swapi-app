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

  def self.create_from_response(species)
    species.each do |species_hash|
      species_hash = Services::ResourceHandler.format_date_keys(species_hash)
      species_values = Services::ResourceHandler.extract_relationships(species_hash, 'species')
      resource_hash = species_values[:resource_hash]

      species = Species.create(resource_hash)
      films_array = species_values[:films_array] || []
      people_array = species_values[:people_array] || []

      if films_array
        films_array.each do |url|
          film = Film.find_by_url(url)
          film ||= SwapiFindResourceByUrlJob.run_now(url, species)
        end
      end

      if people_array
        people_array.each do |url|
          film = People.find_by_url(url)
          film_response ||= SwapiFindResourceByUrlJob.run_now(url, species) unless film

        end
      end
    end
  end

  def self.get_resource_from_array(species_array)

  end



end
