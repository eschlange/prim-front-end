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

ActiveRecord::Schema.define(version: 20140531230008) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abouts", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "site_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "abouts", ["site_id"], name: "index_abouts_on_site_id", using: :btree

  create_table "contact_us", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "site_id"
  end

  add_index "contact_us", ["site_id"], name: "index_contact_us_on_site_id", using: :btree

  create_table "eligibilities", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "site_id"
  end

  add_index "eligibilities", ["site_id"], name: "index_eligibilities_on_site_id", using: :btree

  create_table "fundings", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "site_id"
  end

  add_index "fundings", ["site_id"], name: "index_fundings_on_site_id", using: :btree

  create_table "homes", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "site_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "homes", ["site_id"], name: "index_homes_on_site_id", using: :btree

  create_table "interventions", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "site_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "interventions", ["site_id"], name: "index_interventions_on_site_id", using: :btree

  create_table "resources", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "site_id"
  end

  add_index "resources", ["site_id"], name: "index_resources_on_site_id", using: :btree

  create_table "roles", force: true do |t|
    t.string "name"
    t.string "description"
  end

  create_table "sites", force: true do |t|
    t.string   "name"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",   null: false
    t.string   "encrypted_password",     default: "",   null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,    null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "future_contact",         default: true
    t.integer  "role_id"
    t.string   "phone"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
