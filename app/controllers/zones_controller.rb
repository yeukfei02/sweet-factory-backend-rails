class ZonesController < AuthApiController
  def create_zones
    request_body = JSON.parse(request.raw_post)
    zone_name = request_body['zone_name']

    zone = Zone.create(zone_name: zone_name)

    if zone.present?
      @message = 'createZones'
      render :create_zones, status: 200
    else
      @message = 'createZones error'
      render :create_zones, status: 400
    end
  rescue StandardError => e
    puts "error = #{e}"

    @message = 'createZones error'
    @error = e.message.to_s
    render :create_zones, status: 400
  end

  def get_zones
    @message = 'getZones'
    @zones = Zone.all
    render :get_zones, status: 200
  rescue StandardError => e
    puts "error = #{e}"

    @message = 'getZones error'
    @error = e.message.to_s
    render :get_zones, status: 400
  end

  def get_zone_by_id
    @message = 'getZoneById'
    @zone = Zone.find(params[:id])
    render :get_zone_by_id, status: 200
  rescue StandardError => e
    puts "error = #{e}"

    @message = 'getZoneById error'
    @error = e.message.to_s
    render :get_zone_by_id, status: 400
  end
end
