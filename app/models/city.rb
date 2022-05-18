# frozen_string_literal: true

# == Schema Information
#
# Table name: cities
#
#  id         :bigint           not null, primary key
#  area       :string(255)
#  city_name  :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#  zone_id    :bigint
#
# Indexes
#
#  index_cities_on_area        (area)
#  index_cities_on_city_name   (city_name)
#  index_cities_on_created_at  (created_at)
#  index_cities_on_updated_at  (updated_at)
#  index_cities_on_user_id     (user_id)
#  index_cities_on_zone_id     (zone_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#  fk_rails_...  (zone_id => zones.id)
#
class City < ApplicationRecord
  # association
  has_many :machines, dependent: :destroy
  has_many :products, dependent: :destroy
  belongs_to :zone
  belongs_to :user

  # validation
  validates :city_name, presence: true
  validates :area, presence: true
end
