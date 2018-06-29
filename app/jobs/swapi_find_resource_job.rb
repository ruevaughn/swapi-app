class SwapiFindResourceJob < ApplicationJob

  # Sidekiq is obviously not thrilled about Active Job - testing it out
  # anyway.
  #
  # From https://github.com/mperham/sidekiq/wiki/Active+Job#performance
  #
  # Benchmarks show that ActiveJob is 2-20x times slower pushing jobs to
  # Redis and has roughly 3x the processing overhead (with Rails 5.1.4
  # and Sidekiq 5.1.1).

  # The default AJ retry scheme is 3 retries, 5 seconds apart.
  # Once this is done (after 15-30 seconds), AJ will kick the
  # job back to Sidekiq, where Sidekiq's retries with exponential
  # backoff will take over.

  rescue_from(ErrorLoadingSite) do
    retry_job wait: 1.minute, queue: :low_priority
  end

  queue_as :default

  def perform(resource)
    @resource_type = resource.class.to_s.downcase.singularize
    @resource_id = resource.id

    response = Faraday.get(url).inspect
    puts response
  end

  private
    def url
      "#{@BASE_URL}/#{@resource_type}/#{@resource_id}/"
    end
end
