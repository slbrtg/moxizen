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

ActiveRecord::Schema.define(version: 20180629234439) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "account_activities", force: :cascade do |t|
    t.integer "total_calls"
    t.integer "total_outbound_calls"
    t.integer "total_call_duration"
    t.integer "total_voicemails"
    t.integer "total_calls_abandoned_in_queue"
    t.integer "total_inbound_calls"
    t.integer "average_queue_wait_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "agent_activities", force: :cascade do |t|
    t.bigint "agent_id"
    t.integer "calls_accepted"
    t.integer "calls_denied"
    t.integer "calls_missed"
    t.integer "online_time"
    t.integer "available_time"
    t.integer "total_call_duration"
    t.integer "total_talk_time"
    t.integer "total_wrap_up_time"
    t.integer "accepted_transfers"
    t.integer "started_transfers"
    t.integer "calls_put_on_hold"
    t.integer "total_hold_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "agents", force: :cascade do |t|
    t.string "name"
    t.string "avatar_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "talks", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
