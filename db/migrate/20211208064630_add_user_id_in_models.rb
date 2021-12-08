class AddUserIdInModels < ActiveRecord::Migration[6.1]
  def change
    add_column :zones, :user_id, :bigint
    add_column :cities, :user_id, :bigint
    add_column :machines, :user_id, :bigint
    add_column :products, :user_id, :bigint

    add_foreign_key :zones, :users, column: :user_id
    add_foreign_key :cities, :users, column: :user_id
    add_foreign_key :machines, :users, column: :user_id
    add_foreign_key :products, :users, column: :user_id
  end
end
