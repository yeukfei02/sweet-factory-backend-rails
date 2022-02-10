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
require 'rails_helper'

RSpec.describe Machine, type: :model do
  let!(:machine) do
    create(:machine)
  end

  describe 'associations' do
    it { is_expected.to have_many(:products).class_name('Product') }
    it { is_expected.to belong_to(:city).class_name('City') }
    it { is_expected.to belong_to(:user).class_name('User') }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:machine_name) }
    it { is_expected.to validate_presence_of(:serial_number) }
  end
end
