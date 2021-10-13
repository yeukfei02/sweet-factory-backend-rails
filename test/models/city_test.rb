# == Schema Information
#
# Table name: cities
#
#  id         :bigint           not null, primary key
#  area       :string(255)
#  city_name  :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  zone_id    :bigint
#
# Indexes
#
#  fk_rails_f8d2792419  (zone_id)
#
# Foreign Keys
#
#  fk_rails_...  (zone_id => zones.id)
#
require 'test_helper'

class CityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
