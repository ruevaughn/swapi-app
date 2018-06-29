# == Schema Information
#
# Table name: services_resource_handlers
#
#  id         :bigint(8)        not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :services_resource_handler, class: 'Services::ResourceHandler' do
    
  end
end
