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
    resource = SwapiFindResourceJob.perform_now(resource)
  end

  def self.get_resources(resource, page)
    SwapiFindResourcesJob.perform_now(resource,page)
  end

  def self.find_resource_by_url(url)
    SwapiFindResourceByUrl.perform_now(url)
  end

  def self.find_next(current)

  end
end
