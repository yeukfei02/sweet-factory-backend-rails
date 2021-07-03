class Zone < ApplicationRecord
  has_many :cities

  validates :zone_name, presence: true
end
