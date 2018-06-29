class SwapiFindResourceByUrlArraysJob < ApplicationJob
  queue_as :default

  def perform(*args)
    def self.parse_relationships_from_hash(relationships, resource_class)
      relationships.each do |relation|
        resource_class = relation.singularize.titleize.constantize
        relation[0].map do |url|
          resource = resource_class.find_resource_by_url(url)
          resource ||= get_resource_from_url(url)
          resource
        end
      end
      relationships
    end
  end

end
