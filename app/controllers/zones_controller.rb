class ZonesController < AuthApiController
  def create_zones
    params.require(%i[zone_name user_id])

    zone_name = params['zone_name']
    user_id = params['user_id']

    zone = Zone.create(zone_name: zone_name, user_id: user_id)

    if zone.present?
      @message = 'createZones'
      render :create_zones, status: :ok
    else
      @message = 'createZones error'
      render :create_zones, status: :bad_request
    end
  rescue StandardError => e
    puts "error = #{e}"

    @message = 'createZones error'
    @error = e.message.to_s
    render :create_zones, status: :bad_request
  end

  def get_zones
    params.require(:user_id)

    user_id = params[:user_id]

    @message = 'getZones'
    @zones = Zone.where(user_id: user_id)
    render :get_zones, status: :ok
  rescue StandardError => e
    puts "error = #{e}"

    @message = 'getZones error'
    @error = e.message.to_s
    render :get_zones, status: :bad_request
  end

  def get_zone_by_id
    @message = 'getZoneById'
    @zone = Zone.find(params[:id])
    render :get_zone_by_id, status: :ok
  rescue StandardError => e
    puts "error = #{e}"

    @message = 'getZoneById error'
    @error = e.message.to_s
    render :get_zone_by_id, status: :bad_request
  end
end
