# == Schema Information
#
# Table name: zones
#
#  id         :bigint           not null, primary key
#  zone_name  :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Zone < ApplicationRecord
  has_many :cities

  validates :zone_name, presence: true
end
