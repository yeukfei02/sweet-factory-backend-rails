# == Schema Information
#
# Table name: products
#
#  id                  :bigint           not null, primary key
#  price               :float(24)
#  product_description :string(255)
#  product_name        :string(255)
#  quantity            :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  city_id             :bigint
#  machine_id          :bigint
#  user_id             :bigint
#
# Indexes
#
#  fk_rails_391685e1f6  (city_id)
#  fk_rails_87758910ea  (machine_id)
#  fk_rails_dee2631783  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (city_id => cities.id)
#  fk_rails_...  (machine_id => machines.id)
#  fk_rails_...  (user_id => users.id)
#
class Product < ApplicationRecord
  # association
  belongs_to :machine
  belongs_to :city
  belongs_to :user

  # validation
  validates :product_name, presence: true
  validates :product_description, presence: true
  validates :price, presence: true, numericality: { only_float: true }
  validates :quantity, presence: true, numericality: { only_integer: true }
end
