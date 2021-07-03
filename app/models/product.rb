class Product < ApplicationRecord
  belongs_to :machine
  belongs_to :city

  validates :product_name, presence: true
  validates :product_description, presence: true
  validates :price, presence: true, numericality: { only_float: true }
  validates :quantity, presence: true, numericality: { only_integer: true }
end
