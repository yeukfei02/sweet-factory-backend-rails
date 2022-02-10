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
require 'rails_helper'

RSpec.describe Product, type: :model do
  let!(:product) do
    create(:product)
  end

  describe 'associations' do
    it { is_expected.to belong_to(:machine).class_name('Machine') }
    it { is_expected.to belong_to(:city).class_name('City') }
    it { is_expected.to belong_to(:user).class_name('User') }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:product_name) }
    it { is_expected.to validate_presence_of(:product_description) }

    it { is_expected.to validate_presence_of(:price) }

    it { is_expected.to validate_presence_of(:quantity) }
    it { is_expected.to validate_numericality_of(:price).only_integer }
  end
end
