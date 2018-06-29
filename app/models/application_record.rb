class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.set_received_page
    last_received_page += 1
  end

  def self.last_received_page
    last_received_page ||= 0
  end

  def self.next_page
    last_received_page + 1
  end

  def self.finished
    has_all_data = true
  end

  def self.has_all_data?
    has_all_data ||= false
  end
end
