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

ActiveRecord::Schema.define(version: 2021_07_12_021516) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.string "park_name"
    t.string "address"
    t.string "parkCode"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image_url"
    t.boolean "visited", default: false
    t.string "latitude"
    t.string "longitude"
  end

  create_table "journals", force: :cascade do |t|
    t.string "title"
    t.string "body"
    t.string "date"
    t.integer "favorite_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "longitude"
    t.string "latitude"
    t.boolean "is_public", default: false
  end

  create_table "plants", force: :cascade do |t|
    t.integer "user_id"
    t.string "photo_description"
    t.string "image_url"
    t.string "latitude"
    t.string "longitude"
    t.string "plant_name"
    t.string "common_name"
    t.string "edible_parts"
    t.string "propagation_methods"
    t.string "synonyms"
    t.string "wiki_description"
    t.string "wiki_citation_url"
    t.string "wiki_license_name"
    t.string "wiki_license_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "is_plant", default: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email", null: false
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
