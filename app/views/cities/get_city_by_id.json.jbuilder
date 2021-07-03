json.message @message

if @city.present?
  json.city do
    json.id @city.id
    json.city_name @city.city_name
    json.area @city.area
    json.created_at @city.created_at
    json.updated_at @city.updated_at
    json.zone @city.zone
  end
end

json.error @error if @error.present?
