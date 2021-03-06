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

ActiveRecord::Schema.define(version: 20140727155033) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "date_requests", force: true do |t|
    t.string   "location"
    t.integer  "relationship_status"
    t.integer  "spender"
    t.integer  "main_event"
    t.date     "event_date"
    t.time     "event_time"
    t.boolean  "email_sent",          default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "plan_id"
  end

  create_table "plans", force: true do |t|
    t.string   "name"
    t.string   "main_event_type"
    t.string   "neighborhood"
    t.integer  "cost"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "date_request_id"
  end

end
