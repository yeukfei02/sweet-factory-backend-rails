# frozen_string_literal: true

json.message @message

if @product.present?
  json.product do
    json.id @product.id
    json.product_name @product.product_name
    json.product_description @product.product_description
    json.price @product.price
    json.quantity @product.quantity
    json.machine @product.machine
    json.city @product.city
  end
end

json.error @error if @error.present?
