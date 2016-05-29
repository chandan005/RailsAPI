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

ActiveRecord::Schema.define(version: 20160528124003) do

  create_table "access_points", force: :cascade do |t|
    t.string   "ssid"
    t.string   "bssid"
    t.string   "mac_address"
    t.string   "nearby_point"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "domestics", force: :cascade do |t|
    t.string   "tapped_timestamp"
    t.string   "mac_address"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "internationals", force: :cascade do |t|
    t.string   "tapped_timestamp"
    t.string   "mac_address"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "skybus_t1s", force: :cascade do |t|
    t.string   "timetable"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skybus_t3s", force: :cascade do |t|
    t.string   "timetable"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skybus_t4s", force: :cascade do |t|
    t.string   "timetable"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "taxis", force: :cascade do |t|
    t.string   "taxi_number"
    t.integer  "taxi_availability"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

end
