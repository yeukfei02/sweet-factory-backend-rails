json.message @message

if @machine.present?
  json.machine do
    json.id @machine.id
    json.machine_name @machine.machine_name
    json.serial_number @machine.serial_number
    json.created_at @machine.created_at
    json.updated_at @machine.updated_at
    json.city @machine.city
    json.products @machine.products
  end
end

json.error @error if @error.present?
