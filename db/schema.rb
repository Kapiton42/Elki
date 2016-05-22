# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160519131320) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "days", force: :cascade do |t|
    t.boolean  "monday"
    t.boolean  "tuesday"
    t.boolean  "wed"
    t.boolean  "thursday"
    t.boolean  "friday"
    t.boolean  "saturday"
    t.boolean  "sunday"
    t.integer  "graphik_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "days", ["graphik_id"], name: "index_days_on_graphik_id", using: :btree

  create_table "do_not_stops", force: :cascade do |t|
    t.integer  "station_id", null: false
    t.integer  "graphik_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "do_not_stops", ["graphik_id"], name: "index_do_not_stops_on_graphik_id", using: :btree
  add_index "do_not_stops", ["station_id"], name: "index_do_not_stops_on_station_id", using: :btree

  create_table "graphiks", force: :cascade do |t|
    t.integer  "station_begin_id", null: false
    t.integer  "station_end_id",   null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "prices", force: :cascade do |t|
    t.integer  "zones",           null: false
    t.integer  "price_of_ticket", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "stations", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "tarif_zone", null: false
    t.integer  "number",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "stations", ["name"], name: "index_stations_on_name", unique: true, using: :btree
  add_index "stations", ["number"], name: "index_stations_on_number", unique: true, using: :btree

  create_table "time_of_arrs", force: :cascade do |t|
    t.time     "timeOfArrival", null: false
    t.integer  "station_id",    null: false
    t.integer  "graphik_id",    null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "time_of_arrs", ["graphik_id"], name: "index_time_of_arrs_on_graphik_id", using: :btree
  add_index "time_of_arrs", ["station_id"], name: "index_time_of_arrs_on_station_id", using: :btree

  add_foreign_key "days", "graphiks"
  add_foreign_key "do_not_stops", "graphiks"
  add_foreign_key "do_not_stops", "stations"
  add_foreign_key "time_of_arrs", "graphiks"
  add_foreign_key "time_of_arrs", "stations"
end
