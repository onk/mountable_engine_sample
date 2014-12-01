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

ActiveRecord::Schema.define(version: 20141201070612) do

  create_table "items", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "my_engine_users", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "treasury_ads", force: true do |t|
    t.string   "service_code",        null: false
    t.string   "platform",            null: false
    t.string   "original_ad_id",      null: false
    t.string   "content_name",        null: false
    t.text     "content_description", null: false
    t.string   "appli_url",           null: false
    t.string   "banner_image_url",    null: false
    t.string   "banner_image_alt"
    t.string   "banner_text",         null: false
    t.string   "banner_url",          null: false
    t.string   "count_type_for_user", null: false
    t.integer  "price",               null: false
    t.integer  "action_type",         null: false
    t.datetime "disabled_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "treasury_ads", ["appli_url"], name: "appli_url", using: :btree
  add_index "treasury_ads", ["service_code", "platform", "original_ad_id"], name: "service_code_and_platform_and_original_ad_id", unique: true, using: :btree

  create_table "treasury_conversion_histories", force: true do |t|
    t.integer  "user_id",         null: false
    t.string   "service_code",    null: false
    t.string   "conversion_code", null: false
    t.integer  "ad_id",           null: false
    t.integer  "place_id",        null: false
    t.datetime "clicked_at",      null: false
    t.datetime "received_at",     null: false
    t.integer  "reward_id",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "treasury_conversion_histories", ["service_code", "conversion_code"], name: "service_code_and_conversion_code", unique: true, using: :btree
  add_index "treasury_conversion_histories", ["user_id", "clicked_at", "ad_id", "place_id"], name: "user_id_and_clicked_at_and_ad_id_and_place_id", unique: true, using: :btree

  create_table "treasury_rewards", force: true do |t|
    t.string   "service_code",                 null: false
    t.string   "content_type",                 null: false
    t.integer  "content_id",                   null: false
    t.integer  "amount",                       null: false
    t.integer  "min_price"
    t.integer  "max_price"
    t.boolean  "force_add",    default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "treasury_rewards", ["service_code"], name: "service_code", using: :btree

  create_table "users", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
