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
#
# Indexes
#
#  fk_rails_391685e1f6  (city_id)
#  fk_rails_87758910ea  (machine_id)
#
# Foreign Keys
#
#  fk_rails_...  (city_id => cities.id)
#  fk_rails_...  (machine_id => machines.id)
#
require "test_helper"

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
