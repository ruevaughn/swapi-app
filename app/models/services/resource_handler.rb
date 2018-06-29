# == Schema Information
#
# Table name: services_resource_handlers
#
#  id         :bigint(8)        not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Services::ResourceHandler < ApplicationRecord


  def self.create_from_response(response, resource_name, relationships_array, parent_resource=nil)
    response.each do |response_hash|
      response_hash = format_date_keys(species_hash)
      response_array = extract_relationships(species_hash, resource_name, relationships_array)

      klass = resource_name.singularize.titleize.constantize
      resource_params = response_array[0]
      resource = klass.create(resource_params)
      handle_relationships(resource, response_array, relationships_array, parent_resource)
    end
  end

  def self.handle_relationships(resource, response_array, relationships_array, parent_resource=nil)
      relationships_array.each_with_index do |relationship_symbol, index|
        array = response_array[index + 1] || []

        klass = relationship_symbol.singularize.titleize.constantize
        if array
          array.each do |url|
            resource = klass.find_by_url(url)
            if parent_resource
              parent_resource.try(relationship_symbol) << resource
            elsif resource
              resource.try(relationship_symbol) << resource
            else
              response = SwapiFindResourceByUrlJob.run_now(url, resource)
              relationships = get_relationships(relationship_symbol
              resource_name = relationship_symbol.to_s.pluralize.downcase
              create_from_response(response, resource_name, relationships, resource)
            end
          end
      end

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


    # Here can pass the class or the string aka Film or 'films' because
    # I can think of some cool things we could do with the Class name
    # if there was more time
    def self.extract_relationships(resource_hash, resource_class, relationships array)
      resource_hash.deep_symbolize_keys!
      resource_hash = format_date_keys(resource_hash)
      handle_resource_relationships(resource_hash, resource_class)
    end

    private
      def self.handle_resource_relationships(resource_hash, resource_class, relationships_array)
        values = []
          relationships_array.each do |relationship|
            values << resource_hash.delete(relationship)
          end

        values.unshift(resource_hash)
        values
      end


      def self.format_date_keys(resource_hash)
        resource_hash[:created_at] = resource_hash.delete(:created)
        resource_hash[:updated_at] = resource_hash.delete(:edited)
        resource_hash
      end

      def self.get_relationships(resource_symbol)
        case resource_symbol
        when :species
          [:films, :people]
        when :films
          [:people, :planets, :species, :starships, :vehicles]
        when :people
          [:films, :planets, :species, :starships, :vehicles]
        when :starships
          [:films, :people]
        when :vehicles
          [:films, :people]
      end

end
