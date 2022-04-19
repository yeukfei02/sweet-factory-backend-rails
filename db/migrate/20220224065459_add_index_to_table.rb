# frozen_string_literal: true

class AddIndexToTable < ActiveRecord::Migration[6.1]
  def change
    add_index :users, :email, name: 'index_users_on_email'
    add_index :users, :password, name: 'index_users_on_password'
    add_index :users, :created_at, name: 'index_users_on_created_at'
    add_index :users, :updated_at, name: 'index_users_on_updated_at'

    add_index :zones, :zone_name, name: 'index_zones_on_zone_name'
    add_index :zones, :user_id, name: 'index_zones_on_user_id'
    add_index :zones, :created_at, name: 'index_zones_on_created_at'
    add_index :zones, :updated_at, name: 'index_zones_on_updated_at'

    add_index :cities, :city_name, name: 'index_cities_on_city_name'
    add_index :cities, :area, name: 'index_cities_on_area'
    add_index :cities, :user_id, name: 'index_cities_on_user_id'
    add_index :cities, :zone_id, name: 'index_cities_on_zone_id'
    add_index :cities, :created_at, name: 'index_cities_on_created_at'
    add_index :cities, :updated_at, name: 'index_cities_on_updated_at'

    add_index :machines, :machine_name, name: 'index_machines_on_machine_name'
    add_index :machines, :serial_number, name: 'index_machines_on_serial_number'
    add_index :machines, :user_id, name: 'index_machines_on_user_id'
    add_index :machines, :city_id, name: 'index_machines_on_city_id'
    add_index :machines, :created_at, name: 'index_machines_on_created_at'
    add_index :machines, :updated_at, name: 'index_machines_on_updated_at'

    add_index :products, :price, name: 'index_products_on_price'
    add_index :products, :product_description, name: 'index_products_on_product_description'
    add_index :products, :product_name, name: 'index_products_on_product_name'
    add_index :products, :quantity, name: 'index_products_on_quantity'
    add_index :products, :user_id, name: 'index_products_on_user_id'
    add_index :products, :city_id, name: 'index_products_on_city_id'
    add_index :products, :machine_id, name: 'index_products_on_machine_id'
    add_index :products, :created_at, name: 'index_products_on_created_at'
    add_index :products, :updated_at, name: 'index_products_on_updated_at'
  end
end
