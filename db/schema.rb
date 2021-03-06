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

ActiveRecord::Schema.define(version: 20181113183043) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "offers", force: :cascade do |t|
    t.string   "shop_name",                               null: false
    t.integer  "price_in_cents",          default: 0,     null: false
    t.integer  "shipping_price_in_cents", default: 0,     null: false
    t.text     "address",                                 null: false
    t.integer  "product_id"
    t.boolean  "rejected",                default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: :cascade do |t|
    t.string   "name",                       null: false
    t.integer  "price_in_cents", default: 0, null: false
    t.string   "brand",                      null: false
    t.string   "model",                      null: false
    t.text     "address",                    null: false
    t.integer  "shop_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shops", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "offers", "products"
  add_foreign_key "products", "shops"
end
