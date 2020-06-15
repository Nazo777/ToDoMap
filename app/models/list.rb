class List < ApplicationRecord
  validates         :latitude, presence: true
  validates         :longitude, presence: true
  validates         :title, presence: true 
  geocoded_by       :address
  before_validation :geocode
end
