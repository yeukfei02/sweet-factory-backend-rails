# == Schema Information
#
# Table name: zones
#
#  id         :bigint           not null, primary key
#  zone_name  :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_zones_on_created_at  (created_at)
#  index_zones_on_updated_at  (updated_at)
#  index_zones_on_user_id     (user_id)
#  index_zones_on_zone_name   (zone_name)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require 'rails_helper'

RSpec.describe Zone, type: :model do
  let!(:zone) do
    create(:zone)
  end

  describe 'associations' do
    it { is_expected.to have_many(:cities).class_name('City') }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:zone_name) }
  end
end
