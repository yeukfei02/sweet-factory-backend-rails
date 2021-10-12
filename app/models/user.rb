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
class User < ApplicationRecord
  validates :email, presence: true
  validates :password, presence: true
end
