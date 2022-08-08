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

ActiveRecord::Schema[7.0].define(version: 2022_08_08_162029) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "industry"
    t.integer "company_house_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "reports", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.string "location_country"
    t.string "location_county"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "currency"
    t.integer "revenue"
    t.integer "employee_count"
    t.integer "eletricity_usage"
    t.boolean "renewables"
    t.boolean "owned_vehicles"
    t.integer "quantity_vehicles"

    # need to change boolean to integer for below

    t.boolean "office_size"
    t.string "building_heating_type"
    t.integer "building_heating_quantity"
    t.integer "total_expenses"
    t.integer "flight_expenses"
    t.integer "train_expenses"
    t.string "phone_computer_expenses"
    t.string "legal_consultancy_expenses"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_reports_on_company_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "reports", "companies"
end
