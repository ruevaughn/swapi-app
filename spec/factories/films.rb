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

FactoryBot.define do
  factory :film do
    title "MyString"
    episode_id 1
    opening_crawl "MyText"
    url "MyString"
    director "MyString"
    producer "MyString"
    release_date "MyString"
    people ""
    planets ""
    starships ""
    vehicles ""
    species ""
  end
end
