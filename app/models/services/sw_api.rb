# == Schema Information
#
# Table name: services_sw_apis
#
#  id         :bigint(8)        not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Services::SwApi < ApplicationRecord
  def self.get_resource(resource)
    resource = swapi_find_resource_job.perform(resource)
    if resource
    else
    end
  end

  def self.get_resources(resource, page)
    resources = SwapiFindResourcesJob.perform_now(resource,page)
  end

  def self.find_next(current)
  end
end
