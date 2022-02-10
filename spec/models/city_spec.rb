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
#  fk_rails_34332fe7ca  (user_id)
#  fk_rails_f8d2792419  (zone_id)
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

  describe 'associations' do
    it { is_expected.to have_many(:machines).class_name('Machine') }
    it { is_expected.to belong_to(:zone).class_name('Zone') }
    it { is_expected.to belong_to(:user).class_name('User') }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:city_name) }
    it { is_expected.to validate_presence_of(:area) }
  end
end
