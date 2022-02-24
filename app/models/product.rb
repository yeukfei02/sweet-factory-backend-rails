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
#  index_products_on_city_id              (city_id)
#  index_products_on_created_at           (created_at)
#  index_products_on_machine_id           (machine_id)
#  index_products_on_price                (price)
#  index_products_on_product_description  (product_description)
#  index_products_on_product_name         (product_name)
#  index_products_on_quantity             (quantity)
#  index_products_on_updated_at           (updated_at)
#  index_products_on_user_id              (user_id)
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
