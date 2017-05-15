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

ActiveRecord::Schema.define(version: 20170515022315) do

  create_table "agreements", force: :cascade do |t|
    t.string   "code"
    t.integer  "renter_id"
    t.integer  "employee_id"
    t.date     "date_contract"
    t.integer  "status"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["employee_id"], name: "index_agreements_on_employee_id"
    t.index ["renter_id"], name: "index_agreements_on_renter_id"
  end

  create_table "devices", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.string   "price"
    t.string   "status"
    t.integer  "room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_devices_on_room_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.date     "birthday"
    t.integer  "sex"
    t.string   "phone"
    t.string   "address"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kind_rooms", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "names", force: :cascade do |t|
    t.string   "code"
    t.integer  "status"
    t.integer  "kind_room_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["kind_room_id"], name: "index_names_on_kind_room_id"
  end

  create_table "renters", force: :cascade do |t|
    t.string   "name"
    t.integer  "sex"
    t.string   "address"
    t.string   "id_number"
    t.string   "phone"
    t.string   "citizenship"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "status"
    t.integer  "kind_room_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["kind_room_id"], name: "index_rooms_on_kind_room_id"
  end

  create_table "services", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "role_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
  end

end
