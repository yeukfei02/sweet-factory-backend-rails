class City < ApplicationRecord
  belongs_to :zone

  validates :city_name, presence: true
  validates :area, presence: true
end
