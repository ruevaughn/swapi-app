class SwapiFindResourcesJob < ApplicationJob
  queue_as :default

  def perform(resource, page)
    @resources_type = resource
    @page = page

    binding.pry
    response = Faraday.get(url).inspect
    puts response
  end

  private
    def url
      "#{@BASE_URL}/#{@resources_type}/?=#{@page}"
    end
end
