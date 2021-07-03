class Machine < ApplicationRecord
  belongs_to :city
  has_many :products

  validates :machine_name, presence: true
  validates :serial_number, presence: true
end
