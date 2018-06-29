class SwapiFindResourcesJob < ApplicationJob
  queue_as :default

  def perform(resource, page)
    @resources_type = resource
    @page = page

    conn = Faraday.new :request => { :params_encoder => Faraday::FlatParamsEncoder }

    response = conn.get(url)
    # response.inspect
    JSON.parse(response.body)["results"]
  end

  private
    def url
      "#{BASE_URL}/#{@resources_type}/?=#{@page}.json"
    end
end
