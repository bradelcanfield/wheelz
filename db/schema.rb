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

ActiveRecord::Schema.define(version: 20160227020729) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.string   "name"
    t.string   "phone_number"
    t.datetime "time"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "commuters", force: :cascade do |t|
    t.string   "name"
    t.string   "username"
    t.string   "phone"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "routes", force: :cascade do |t|
    t.string   "start_pt"
    t.string   "end_pt"
    t.time     "arrive_by"
    t.string   "reoccurance"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "segments", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
