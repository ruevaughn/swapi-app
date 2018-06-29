# == Schema Information
#
# Table name: services_resource_handlers
#
#  id         :bigint(8)        not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Services::ResourceHandler < ApplicationRecord
   def self.get_resource_from_url(url)
      Services::SwApi.find_resource_by_url(url)
   end

    # Here can pass the class or the string aka Film or 'films' because
    # I can think of some cool things we could do with the Class name
    # if there was more time
    def self.extract_relationships(resource_hash, resource_class)
      resource_hash.deep_symbolize_keys!
      resource_hash = format_date_keys(resource_hash)
      handle_resource_relationships(resource_hash, resource_class)
    end

    private
      def self.handle_resource_relationships(resource_hash, resource_class)
        resource_class = Services.parse_class_to_singular_string(resource_class) unless resource_class.class == String
        values = {}
        if resource_class == 'species'
          people_array = resource_hash.delete(:people)
          films_array = resource_hash.delete(:films)

          values = {resource_hash: resource_hash, people_array: people_array, films_array: films_array}

        elsif resource_class == 'film'
        elsif resource_class == 'person'
        end
        values
      end


      def self.format_date_keys(resource_hash)
        resource_hash[:created_at] = resource_hash.delete(:created)
        resource_hash[:updated_at] = resource_hash.delete(:edited)
        resource_hash
      end

end
