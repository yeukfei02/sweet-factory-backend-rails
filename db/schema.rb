# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_02_24_065459) do

  create_table "cities", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "city_name"
    t.string "area"
    t.bigint "zone_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.index ["area"], name: "index_cities_on_area"
    t.index ["city_name"], name: "index_cities_on_city_name"
    t.index ["created_at"], name: "index_cities_on_created_at"
    t.index ["updated_at"], name: "index_cities_on_updated_at"
    t.index ["user_id"], name: "index_cities_on_user_id"
    t.index ["zone_id"], name: "index_cities_on_zone_id"
  end

  create_table "machines", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "machine_name"
    t.integer "serial_number"
    t.bigint "city_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.index ["city_id"], name: "index_machines_on_city_id"
    t.index ["created_at"], name: "index_machines_on_created_at"
    t.index ["machine_name"], name: "index_machines_on_machine_name"
    t.index ["serial_number"], name: "index_machines_on_serial_number"
    t.index ["updated_at"], name: "index_machines_on_updated_at"
    t.index ["user_id"], name: "index_machines_on_user_id"
  end

  create_table "products", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "product_name"
    t.string "product_description"
    t.float "price"
    t.integer "quantity"
    t.bigint "machine_id"
    t.bigint "city_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.index ["city_id"], name: "index_products_on_city_id"
    t.index ["created_at"], name: "index_products_on_created_at"
    t.index ["machine_id"], name: "index_products_on_machine_id"
    t.index ["price"], name: "index_products_on_price"
    t.index ["product_description"], name: "index_products_on_product_description"
    t.index ["product_name"], name: "index_products_on_product_name"
    t.index ["quantity"], name: "index_products_on_quantity"
    t.index ["updated_at"], name: "index_products_on_updated_at"
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["created_at"], name: "index_users_on_created_at"
    t.index ["email"], name: "index_users_on_email"
    t.index ["password"], name: "index_users_on_password"
    t.index ["updated_at"], name: "index_users_on_updated_at"
  end

  create_table "zones", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "zone_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.index ["created_at"], name: "index_zones_on_created_at"
    t.index ["updated_at"], name: "index_zones_on_updated_at"
    t.index ["user_id"], name: "index_zones_on_user_id"
    t.index ["zone_name"], name: "index_zones_on_zone_name"
  end

  add_foreign_key "cities", "users"
  add_foreign_key "cities", "zones"
  add_foreign_key "machines", "cities"
  add_foreign_key "machines", "users"
  add_foreign_key "products", "cities"
  add_foreign_key "products", "machines"
  add_foreign_key "products", "users"
  add_foreign_key "zones", "users"
end
