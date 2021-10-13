class AddForeignKeyToTable < ActiveRecord::Migration[6.1]
  def change
    change_column :cities, :zone_id, :bigint

    change_column :machines, :city_id, :bigint

    change_column :products, :machine_id, :bigint
    change_column :products, :city_id, :bigint

    add_foreign_key :cities, :zones, column: :zone_id

    add_foreign_key :machines, :cities, column: :city_id

    add_foreign_key :products, :machines, column: :machine_id
    add_foreign_key :products, :cities, column: :city_id
  end
end
