# frozen_string_literal: true

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
#  index_machines_on_city_id        (city_id)
#  index_machines_on_created_at     (created_at)
#  index_machines_on_machine_name   (machine_name)
#  index_machines_on_serial_number  (serial_number)
#  index_machines_on_updated_at     (updated_at)
#  index_machines_on_user_id        (user_id)
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
