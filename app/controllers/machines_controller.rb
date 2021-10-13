class MachinesController < AuthApiController
  def create_machines
    request_body = JSON.parse(request.raw_post)
    machine_name = request_body['machine_name']
    serial_number = request_body['serial_number']
    city_id = request_body['city_id']

    machine = Machine.create(machine_name: machine_name, serial_number: serial_number, city_id: city_id)

    if machine.present?
      @message = 'createMachines'
      render :create_machines, status: 200
    else
      @message = 'createMachines error'
      render :create_machines, status: 400
    end
  rescue StandardError => e
    puts "error = #{e}"

    @message = 'createMachines error'
    @error = e.message.to_s
    render :create_machines, status: 400
  end

  def get_machines
    @message = 'getMachines'
    @machines = Machine.all
    render :get_machines, status: 200
  rescue StandardError => e
    puts "error = #{e}"

    @message = 'getMachines error'
    @error = e.message.to_s
    render :get_machines, status: 400
  end

  def get_machine_by_id
    @message = 'getMachineById'
    @machine = Machine.find(params[:id])
    render :get_machine_by_id, status: 200
  rescue StandardError => e
    puts "error = #{e}"

    @message = 'getMachineById error'
    @error = e.message.to_s
    render :get_machine_by_id, status: 400
  end
end
