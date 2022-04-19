# frozen_string_literal: true

json.message @message
json.zones @zones do |zone|
  json.id zone.id
  json.zone_name zone.zone_name
  json.created_at zone.created_at
  json.updated_at zone.updated_at
  json.cities zone.cities
end
json.error @error if @error.present?
