# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180428063214) do

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "organisation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organisation_id"], name: "index_cities_on_organisation_id"
  end

  create_table "floors", force: :cascade do |t|
    t.integer "tower_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["tower_id"], name: "index_floors_on_tower_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.integer "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_locations_on_city_id"
  end

  create_table "organisations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "surveys", force: :cascade do |t|
    t.text "organisation"
    t.text "city"
    t.text "location"
    t.text "unit"
    t.text "tower"
    t.text "floor"
    t.decimal "area"
    t.text "building_type"
    t.text "component"
    t.text "ipms"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "towers", force: :cascade do |t|
    t.string "name"
    t.integer "unit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["unit_id"], name: "index_towers_on_unit_id"
  end

  create_table "units", force: :cascade do |t|
    t.string "name"
    t.integer "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_units_on_location_id"
  end

end
