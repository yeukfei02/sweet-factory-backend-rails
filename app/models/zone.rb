# == Schema Information
#
# Table name: zones
#
#  id         :bigint           not null, primary key
#  zone_name  :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_zones_on_created_at  (created_at)
#  index_zones_on_updated_at  (updated_at)
#  index_zones_on_user_id     (user_id)
#  index_zones_on_zone_name   (zone_name)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Zone < ApplicationRecord
  # association
  has_many :cities, dependent: :destroy
  belongs_to :user

  # validation
  validates :zone_name, presence: true
end
