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

ActiveRecord::Schema.define(version: 20160907133042) do

  create_table "cpanels", force: :cascade do |t|
    t.string   "Name"
    t.integer  "User_id"
    t.integer  "Property_id"
    t.integer  "flat_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "documents", force: :cascade do |t|
    t.string   "name"
    t.string   "attachment"
    t.integer  "property_id", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "flats", force: :cascade do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "property_id"
    t.string   "name"
    t.string   "flat_nr"
    t.datetime "join_date"
    t.string   "caretaker"
    t.integer  "phone"
    t.string   "relatives"
    t.integer  "rooms"
    t.string   "morepersons"
    t.string   "email"
    t.integer  "ownerhistory_id"
  end

  create_table "ownerhistories", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "move_out_date"
    t.datetime "move_in_date"
    t.integer  "user_id"
    t.integer  "property_id"
    t.integer  "flat_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "postflats", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "properties", force: :cascade do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.string   "address"
  end

  create_table "replies", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.integer  "ticket_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.string   "address"
    t.string   "name"
    t.integer  "phone"
    t.string   "email"
    t.string   "selection"
    t.string   "flat_nr"
    t.integer  "user_id"
    t.string   "content"
    t.string   "subject"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "reply_id"
    t.boolean  "status",     default: false
    t.string   "surname"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",        null: false
    t.string   "encrypted_password",     default: "",        null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,         null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.string   "name"
    t.string   "surname"
    t.string   "location"
    t.integer  "role_id"
    t.string   "orderby",                default: "address"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  create_table "whiteboards", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.integer  "property_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end