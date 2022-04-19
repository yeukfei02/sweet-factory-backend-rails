# frozen_string_literal: true

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
# Indexes
#
#  index_users_on_created_at  (created_at)
#  index_users_on_email       (email)
#  index_users_on_password    (password)
#  index_users_on_updated_at  (updated_at)
#
require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:user) do
    create(:user)
  end

  context 'associations' do
    it { is_expected.to have_many(:zones).class_name('Zone') }
    it { is_expected.to have_many(:cities).class_name('City') }
    it { is_expected.to have_many(:machines).class_name('Machine') }
    it { is_expected.to have_many(:products).class_name('Product') }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:password) }
  end
end
