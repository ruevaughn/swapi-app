
class SwapiFindResourceByUrlJob < ApplicationJob
  queue_as :default

  def perform(url, resource_name=nil, relationships=nil, parent_resource=nil)

    conn = Faraday.new :request => { :params_encoder => Faraday::FlatParamsEncoder }

    response = conn.get(url)
    # { response: JSON.parse(response.body)["results"], association: resource}
    if parent_resource
      create_from_response(response, resource_name, relationships, resource)
    else
      response = JSON.parse(response.body)["results"]
    end
    response
  end
end
