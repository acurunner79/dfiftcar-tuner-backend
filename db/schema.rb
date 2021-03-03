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

ActiveRecord::Schema.define(version: 2021_03_03_052811) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", force: :cascade do |t|
    t.string "year"
    t.string "make"
    t.string "model"
    t.bigint "engine_id", null: false
    t.bigint "clutch_id", null: false
    t.bigint "differential_id", null: false
    t.bigint "hand_brake_id", null: false
    t.bigint "rollcage_id", null: false
    t.bigint "suspension_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["clutch_id"], name: "index_cars_on_clutch_id"
    t.index ["differential_id"], name: "index_cars_on_differential_id"
    t.index ["engine_id"], name: "index_cars_on_engine_id"
    t.index ["hand_brake_id"], name: "index_cars_on_hand_brake_id"
    t.index ["rollcage_id"], name: "index_cars_on_rollcage_id"
    t.index ["suspension_id"], name: "index_cars_on_suspension_id"
    t.index ["user_id"], name: "index_cars_on_user_id"
  end

  create_table "clutches", force: :cascade do |t|
    t.string "stage"
    t.string "brand"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "differentials", force: :cascade do |t|
    t.string "name"
    t.string "brand"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "engines", force: :cascade do |t|
    t.string "engine_code"
    t.string "horsepower"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "hand_brakes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rollcages", force: :cascade do |t|
    t.string "name"
    t.string "brand"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "suspensions", force: :cascade do |t|
    t.string "name"
    t.string "brand"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "car_id"
  end

  add_foreign_key "cars", "clutches"
  add_foreign_key "cars", "differentials"
  add_foreign_key "cars", "engines"
  add_foreign_key "cars", "hand_brakes"
  add_foreign_key "cars", "rollcages"
  add_foreign_key "cars", "suspensions"
  add_foreign_key "cars", "users"
end
