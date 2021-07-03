json.message @message
json.zones @zones do |zone|
  json.id zone.id
  json.zone_name zone.zone_name
  json.cities zone.cities
end
json.error @error if @error.present?
