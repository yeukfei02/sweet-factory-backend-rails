# frozen_string_literal: true

class ProductsController < AuthApiController
  def create_products
    params.require(%i[product_name product_description price quantity machine_id city_id user_id])

    product_name = params['product_name']
    product_description = params['product_description']
    price = params['price']
    quantity = params['quantity']
    machine_id = params['machine_id']
    city_id = params['city_id']
    user_id = params['user_id']

    product = Product.create(
      product_name: product_name,
      product_description: product_description,
      price: price,
      quantity: quantity,
      machine_id: machine_id,
      city_id: city_id,
      user_id: user_id
    )

    if product.present?
      @message = 'createProducts'
      render :create_products, status: :ok
    else
      @message = 'createProducts error'
      render :create_products, status: :bad_request
    end
  rescue StandardError => e
    Rails.logger.debug "error = #{e}"

    @message = 'createProducts error'
    @error = e.message.to_s
    render :create_products, status: :bad_request
  end

  def get_products
    params.require(:user_id)

    user_id = params[:user_id]

    @message = 'getProducts'
    @products = Product.where(user_id: user_id)
    render :get_products, status: :ok
  rescue StandardError => e
    Rails.logger.debug "error = #{e}"

    @message = 'getProducts error'
    @error = e.message.to_s
    render :get_products, status: :bad_request
  end

  def get_product_by_id
    @message = 'getProductById'
    @product = Product.find(params[:id])
    render :get_product_by_id, status: :ok
  rescue StandardError => e
    Rails.logger.debug "error = #{e}"

    @message = 'getProductById error'
    @error = e.message.to_s
    render :get_product_by_id, status: :bad_request
  end
end
