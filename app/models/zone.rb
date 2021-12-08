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
#  fk_rails_36b0b64bdb  (user_id)
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
