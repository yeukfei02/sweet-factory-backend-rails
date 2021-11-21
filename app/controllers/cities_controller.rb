class CitiesController < AuthApiController
  def create_cities
    request_body = JSON.parse(request.raw_post)
    city_name = request_body['city_name']
    area = request_body['area']
    zone_id = request_body['zone_id']

    city = City.create(city_name: city_name, area: area, zone_id: zone_id)

    if city.present?
      @message = 'createCities'
      render :create_cities, status: :ok
    else
      @message = 'createCities error'
      render :create_cities, status: :bad_request
    end
  rescue StandardError => e
    puts "error = #{e}"

    @message = 'createCities error'
    @error = e.message.to_s
    render :create_cities, status: :bad_request
  end

  def get_cities
    @message = 'getCities'
    @cities = City.all
    render :get_cities, status: :ok
  rescue StandardError => e
    puts "error = #{e}"

    @message = 'getCities error'
    @error = e.message.to_s
    render :get_cities, status: :bad_request
  end

  def get_city_by_id
    @message = 'getCityById'
    @city = City.find(params[:id])
    render :get_city_by_id, status: :ok
  rescue StandardError => e
    puts "error = #{e}"

    @message = 'getCityById error'
    @error = e.message.to_s
    render :get_city_by_id, status: :bad_request
  end
end
