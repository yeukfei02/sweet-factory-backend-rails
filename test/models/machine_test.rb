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
#
# Indexes
#
#  fk_rails_d74b7fc4ce  (city_id)
#
# Foreign Keys
#
#  fk_rails_...  (city_id => cities.id)
#
require "test_helper"

class MachineTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
