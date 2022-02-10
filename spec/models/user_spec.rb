# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  email      :string(255)
#  password   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:user) do
    create(:user)
  end

  describe 'associations' do
    it { is_expected.to have_many(:zones).class_name('Zone') }
    it { is_expected.to have_many(:cities).class_name('City') }
    it { is_expected.to have_many(:machines).class_name('Machine') }
    it { is_expected.to have_many(:products).class_name('Product') }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:password) }
  end
end
