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
#  fk_rails_34332fe7ca  (user_id)
#  fk_rails_f8d2792419  (zone_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#  fk_rails_...  (zone_id => zones.id)
#
class City < ApplicationRecord
  # association
  has_many :machines, dependent: :destroy
  belongs_to :zone
  belongs_to :user

  # validation
  validates :city_name, presence: true
  validates :area, presence: true
end
