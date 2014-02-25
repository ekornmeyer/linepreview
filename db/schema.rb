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

ActiveRecord::Schema.define(version: 20140217191542) do

  create_table "assets", force: true do |t|
    t.string   "file_name"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "assets", ["customer_id"], name: "index_assets_on_customer_id"

  create_table "customers", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.string   "sh_address1"
    t.string   "sh_address2"
    t.string   "sh_city"
    t.string   "sh_state"
    t.integer  "sh_zipcode"
    t.string   "bi_address1"
    t.string   "bi_address2"
    t.string   "bi_city"
    t.string   "bi_state"
    t.integer  "bi_zipcode"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "customers", ["email"], name: "index_customers_on_email", unique: true
  add_index "customers", ["remember_token"], name: "index_customers_on_remember_token"

  create_table "order_lines", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "product_code"
    t.string   "name"
    t.string   "description"
    t.string   "unit_price"
    t.string   "default_img_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "relationships", force: true do |t|
    t.integer  "customer_id"
    t.integer  "asset_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationships", ["asset_id"], name: "index_relationships_on_asset_id"
  add_index "relationships", ["customer_id", "asset_id"], name: "index_relationships_on_customer_id_and_asset_id", unique: true
  add_index "relationships", ["customer_id"], name: "index_relationships_on_customer_id"

end
