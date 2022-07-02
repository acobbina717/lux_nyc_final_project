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

ActiveRecord::Schema[7.0].define(version: 2022_06_28_152053) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hotels", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "description"
    t.string "amenities", default: [], array: true
    t.integer "rooms_available"
    t.float "rating"
    t.string "images"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "user_id"
    t.integer "room_id"
    t.integer "hotel_id"
    t.datetime "check_in_date"
    t.datetime "check_out_date"
    t.float "total_cost"
    t.string "images", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "review_comments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "review_id"
    t.string "comment"
    t.float "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_id"
    t.integer "hotel_id"
    t.string "review"
    t.float "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "room_types", force: :cascade do |t|
    t.string "type"
    t.integer "sleeps"
    t.float "base_rate"
    t.integer "hotel_id"
    t.float "rate"
    t.integer "total_inventory"
    t.integer "total_reserved"
    t.string "description"
    t.string "amenities", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.integer "hotel_id"
    t.integer "room_type_id"
    t.boolean "is_available", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.integer "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
