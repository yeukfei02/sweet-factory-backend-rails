# frozen_string_literal: true

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
require 'rails_helper'

RSpec.describe Product, type: :model do
  let!(:product) do
    create(:product)
  end

  context 'associations' do
    it { is_expected.to belong_to(:machine).class_name('Machine') }
    it { is_expected.to belong_to(:city).class_name('City') }
    it { is_expected.to belong_to(:user).class_name('User') }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:product_name) }
    it { is_expected.to validate_presence_of(:product_description) }

    it { is_expected.to validate_presence_of(:price) }

    it { is_expected.to validate_presence_of(:quantity) }
    it { is_expected.to validate_numericality_of(:quantity).only_integer }
  end
end
