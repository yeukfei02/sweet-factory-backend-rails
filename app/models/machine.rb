# == Schema Information
#
# Table name: machines
#
#  id            :bigint           not null, primary key
#  machine_name  :string(255)
#  serial_number :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  city_id       :bigint
#  user_id       :bigint
#
# Indexes
#
#  fk_rails_d74b7fc4ce  (city_id)
#  fk_rails_f7c8eaf040  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (city_id => cities.id)
#  fk_rails_...  (user_id => users.id)
#
class Machine < ApplicationRecord
  # association
  has_many :products, dependent: :destroy
  belongs_to :city
  belongs_to :user

  # validation
  validates :machine_name, presence: true
  validates :serial_number, presence: true
end
