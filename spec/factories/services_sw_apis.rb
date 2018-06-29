# == Schema Information
#
# Table name: services_sw_apis
#
#  id         :bigint(8)        not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :services_sw_api, class: 'Services::SwApi' do
    
  end
end
