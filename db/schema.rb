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

ActiveRecord::Schema[7.0].define(version: 2023_02_15_164740) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "rentals", force: :cascade do |t|
    t.text "adress"
    t.date "check_in"
    t.date "check_out"
    t.integer "adults"
    t.integer "kids"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_rentals_on_user_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.decimal "price"
    t.integer "beds"
    t.integer "bathrooms"
    t.boolean "garage", default: false
    t.boolean "breackfast", default: true
    t.boolean "pets_welcome", default: false
    t.text "images"
    t.bigint "rentals_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rentals_id"], name: "index_rooms_on_rentals_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.datetime "date_of_birth", precision: nil
    t.text "email"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "rentals", "users"
  add_foreign_key "rooms", "rentals", column: "rentals_id"
end
