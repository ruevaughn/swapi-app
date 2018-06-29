class SwapiFindResourceByUrlJob < ApplicationJob
  queue_as :default

  def perform(url, resource)
    conn = Faraday.new :request => { :params_encoder => Faraday::FlatParamsEncoder }

    response = conn.get(url)
    { response: JSON.parse(response.body)["results"], association: resource}
  end
end
