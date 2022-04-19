# frozen_string_literal: true

class MachinesController < AuthApiController
  def create_machines
    params.require(%i[machine_name serial_number city_id user_id])

    machine_name = params['machine_name']
    serial_number = params['serial_number']
    city_id = params['city_id']
    user_id = params['user_id']

    machine = Machine.create(machine_name: machine_name, serial_number: serial_number, city_id: city_id,
                             user_id: user_id)

    if machine.present?
      @message = 'createMachines'
      render :create_machines, status: :ok
    else
      @message = 'createMachines error'
      render :create_machines, status: :bad_request
    end
  rescue StandardError => e
    Rails.logger.debug "error = #{e}"

    @message = 'createMachines error'
    @error = e.message.to_s
    render :create_machines, status: :bad_request
  end

  def get_machines
    params.require(:user_id)

    user_id = params[:user_id]

    @message = 'getMachines'
    @machines = Machine.where(user_id: user_id)
    render :get_machines, status: :ok
  rescue StandardError => e
    Rails.logger.debug "error = #{e}"

    @message = 'getMachines error'
    @error = e.message.to_s
    render :get_machines, status: :bad_request
  end

  def get_machine_by_id
    @message = 'getMachineById'
    @machine = Machine.find(params[:id])
    render :get_machine_by_id, status: :ok
  rescue StandardError => e
    Rails.logger.debug "error = #{e}"

    @message = 'getMachineById error'
    @error = e.message.to_s
    render :get_machine_by_id, status: :bad_request
  end
end
