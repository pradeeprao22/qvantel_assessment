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

ActiveRecord::Schema.define(version: 2020_05_28_184954) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "address"
    t.string "email"
    t.date "date_register"
  end

  create_table "invoices", force: :cascade do |t|
    t.date "date_created"
    t.boolean "status"
    t.float "total"
    t.bigint "customer_id"
    t.index ["customer_id"], name: "index_invoices_on_customer_id"
  end

  create_table "payments", force: :cascade do |t|
    t.date "date_payed"
    t.boolean "status"
    t.float "amount_payed"
    t.bigint "customer_id"
    t.bigint "invoice_id"
    t.index ["customer_id"], name: "index_payments_on_customer_id"
    t.index ["invoice_id"], name: "index_payments_on_invoice_id"
  end

  add_foreign_key "invoices", "customers"
  add_foreign_key "payments", "customers"
  add_foreign_key "payments", "invoices"
end
