# == Schema Information
#
# Table name: films
#
#  id            :bigint(8)        not null, primary key
#  director      :string
#  opening_crawl :text
#  producer      :string
#  release_date  :string
#  title         :string
#  url           :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  episode_id    :integer
#

require 'rails_helper'

RSpec.describe Film, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
