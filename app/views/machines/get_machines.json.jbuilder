json.message @message
json.machines @machines do |machine|
  json.id machine.id
  json.machine_name machine.machine_name
  json.serial_number machine.serial_number
  json.city machine.city
  json.products machine.products
end
json.error @error if @error.present?
