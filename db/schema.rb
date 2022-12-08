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

ActiveRecord::Schema.define(version: 2022_11_29_034841) do

  create_table "foods", force: :cascade do |t|
    t.string "food_name"
    t.integer "restaurant_id"
    t.integer "price"
    t.string "description"
    t.string "image"
    t.datetime "created_at"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "state"
    t.string "food_type"
    t.integer "phone_number"
    t.string "website"
    t.string "online_ordering"
    t.string "image"
    t.datetime "created_at"
  end

end
