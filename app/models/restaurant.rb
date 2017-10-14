class Restaurant < ApplicationRecord
  belongs_to :restaurant_category
  validates :address, presence: true
  geocoded_by :address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates
end
