class SwapiFindResourceByUrlArraysJob < ApplicationJob
  queue_as :default

  def perform(*args)
    def self.parse_relationships_from_hash(relationships, resource_class)
      relationships.each do |relation|
        relation[0].map do |url|
          resource ||= get_resource_from_url(url)
          resource
        end
      end
      relationships
    end
  end

end
