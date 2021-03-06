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

ActiveRecord::Schema.define(version: 20150317132010) do

  create_table "agencies", force: :cascade do |t|
    t.string   "agency_name"
    t.text     "location"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "dealer_stores", force: :cascade do |t|
    t.string   "branch_name"
    t.text     "adress"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "dealer_id"
  end

  create_table "dealers", force: :cascade do |t|
    t.string   "dealer_name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "employee_name"
    t.string   "cellphone_no"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "agency_id"
    t.integer  "dealer_store_id"
  end

  create_table "product_prices", force: :cascade do |t|
    t.decimal  "price"
    t.date     "effective_date"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "dealer_store_id"
    t.integer  "product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string   "SKU"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sales", force: :cascade do |t|
    t.string   "serial_number"
    t.string   "invoice_number"
    t.date     "date_of_purchase"
    t.string   "mode_of_payment"
    t.string   "mode_of_delivery"
    t.string   "request_for_installation"
    t.decimal  "invoice_amount"
    t.decimal  "incentive"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "product_id"
    t.integer  "dealer_store_id"
    t.integer  "employee_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
