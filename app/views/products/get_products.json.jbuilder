json.message @message
json.products @products do |product|
  json.id product.id
  json.product_name product.product_name
  json.product_description product.product_description
  json.price product.price
  json.quantity product.quantity
  json.machine product.machine
  json.city product.city
end
json.error @error if @error.present?
