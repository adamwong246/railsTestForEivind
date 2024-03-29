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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120516191240) do

  create_table "apps", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "click_thrus", :force => true do |t|
    t.text     "url"
    t.datetime "time"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "page_views", :force => true do |t|
    t.text     "url"
    t.datetime "time"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "promos", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "round_robin_promos", :force => true do |t|
    t.integer  "position"
    t.integer  "duration"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "app_id"
    t.integer  "promo_id"
  end

  add_index "round_robin_promos", ["app_id"], :name => "index_round_robin_promos_on_app_id"
  add_index "round_robin_promos", ["promo_id"], :name => "index_round_robin_promos_on_promo_id"

  create_table "schedule_promos", :force => true do |t|
    t.datetime "start_time"
    t.datetime "stop_time"
    t.integer  "app_id"
    t.integer  "promo_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
