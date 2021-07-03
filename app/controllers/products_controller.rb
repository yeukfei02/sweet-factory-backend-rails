class ProductsController < AuthApiController
  def create_products
    begin
      request_body = JSON.parse(request.raw_post)
      product_name = request_body['product_name']
      product_description = request_body['product_description']
      price = request_body['price']
      quantity = request_body['quantity']
      machine_id = request_body['machine_id']
      city_id = request_body['city_id']

      product = Product.create(
        product_name: product_name,
        product_description: product_description,
        price: price,
        quantity: quantity,
        machine_id: machine_id,
        city_id: city_id
      )

      if product.present?
        @message = 'createProducts'
        render :create_products, status: 200
      else
        @message = 'createProducts error'
        render :create_products, status: 400
      end
    rescue => e
      puts "error = #{e}"

      @message = 'createProducts error'
      @error = e.message.to_s
      render :create_products, status: 400
    end
  end

  def get_products
    begin
      @message = 'getProducts'
      @products = Product.all
      render :get_products, status: 200
    rescue => e
      puts "error = #{e}"

      @message = 'getProducts error'
      @error = e.message.to_s
      render :get_products, status: 400
    end
  end

  def get_product_by_id
    begin
      @message = 'getProductById'
      @product = Product.find(params[:id])
      render :get_product_by_id, status: 200
    rescue => e
      puts "error = #{e}"

      @message = 'getProductById error'
      @error = e.message.to_s
      render :get_product_by_id, status: 400
    end
  end
end
