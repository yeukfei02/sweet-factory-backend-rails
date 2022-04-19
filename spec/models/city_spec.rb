# frozen_string_literal: true

# == Schema Information
#
# Table name: cities
#
#  id         :bigint           not null, primary key
#  area       :string(255)
#  city_name  :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#  zone_id    :bigint
#
# Indexes
#
#  index_cities_on_area        (area)
#  index_cities_on_city_name   (city_name)
#  index_cities_on_created_at  (created_at)
#  index_cities_on_updated_at  (updated_at)
#  index_cities_on_user_id     (user_id)
#  index_cities_on_zone_id     (zone_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#  fk_rails_...  (zone_id => zones.id)
#
require 'rails_helper'

RSpec.describe City, type: :model do
  let!(:city) do
    create(:city)
  end

  context 'associations' do
    it { is_expected.to have_many(:machines).class_name('Machine') }
    it { is_expected.to belong_to(:zone).class_name('Zone') }
    it { is_expected.to belong_to(:user).class_name('User') }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:city_name) }
    it { is_expected.to validate_presence_of(:area) }
  end
end
