json.message @message
json.cities @cities do |city|
  json.id city.id
  json.city_name city.city_name
  json.area city.area
  json.zone city.zone
end
json.error @error if @error.present?
