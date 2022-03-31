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

ActiveRecord::Schema.define(version: 2022_03_31_113606) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "commodities", force: :cascade do |t|
    t.jsonb "name_translations"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "opening_hours", force: :cascade do |t|
    t.jsonb "day_translations"
    t.time "opens"
    t.time "closes"
    t.bigint "service_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["service_id"], name: "index_opening_hours_on_service_id"
  end

  create_table "requests", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.bigint "user_id", null: false
    t.bigint "service_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "status"
    t.index ["service_id"], name: "index_requests_on_service_id"
    t.index ["user_id"], name: "index_requests_on_user_id"
  end

  create_table "service_commodities", force: :cascade do |t|
    t.bigint "commodity_id", null: false
    t.bigint "service_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["commodity_id"], name: "index_service_commodities_on_commodity_id"
    t.index ["service_id"], name: "index_service_commodities_on_service_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "type"
    t.string "name"
    t.jsonb "description_translations"
    t.string "address"
    t.string "phone_number"
    t.string "website"
    t.float "price"
    t.integer "capacity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "opening_hours", "services"
  add_foreign_key "requests", "services"
  add_foreign_key "requests", "users"
  add_foreign_key "service_commodities", "commodities"
  add_foreign_key "service_commodities", "services"
end
