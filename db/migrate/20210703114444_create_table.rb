class CreateTable < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.timestamps
    end

    create_table :zones do |t|
      t.string :zone_name
      t.timestamps
    end

    create_table :cities do |t|
      t.string :city_name
      t.string :area
      t.integer :zone_id
      t.timestamps
    end

    create_table :machines do |t|
      t.string :machine_name
      t.integer :serial_number
      t.integer :city_id
      t.timestamps
    end

    create_table :products do |t|
      t.string :product_name
      t.string :product_description
      t.float :price
      t.integer :quantity
      t.integer :machine_id
      t.integer :city_id
      t.timestamps
    end
  end
end
