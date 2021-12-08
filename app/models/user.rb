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
  # association
  has_many :zones, dependent: :destroy
  has_many :cities, dependent: :destroy
  has_many :machines, dependent: :destroy
  has_many :products, dependent: :destroy

  # validation
  validates :email, presence: true
  validates :password, presence: true
end
