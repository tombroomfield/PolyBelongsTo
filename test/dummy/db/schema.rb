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

ActiveRecord::Schema.define(version: 20150216092519) do

  create_table "addresses", force: true do |t|
    t.integer  "addressable_id"
    t.string   "addressable_type"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "addresses", ["addressable_id", "addressable_type"], name: "index_addresses_on_addressable_id_and_addressable_type"

  create_table "contacts", force: true do |t|
    t.integer  "user_id"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contacts", ["user_id"], name: "index_contacts_on_user_id"

  create_table "phones", force: true do |t|
    t.integer  "phoneable_id"
    t.string   "phoneable_type"
    t.string   "content"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "phones", ["phoneable_id", "phoneable_type"], name: "index_phones_on_phoneable_id_and_phoneable_type"

  create_table "photos", force: true do |t|
    t.integer  "photoable_id"
    t.string   "photoable_type"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "photos", ["photoable_id", "photoable_type"], name: "index_photos_on_photoable_id_and_photoable_type"

  create_table "profiles", force: true do |t|
    t.integer  "profileable_id"
    t.string   "profileable_type"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "profiles", ["profileable_id", "profileable_type"], name: "index_profiles_on_profileable_id_and_profileable_type"

  create_table "ssns", force: true do |t|
    t.integer  "user_id"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ssns", ["user_id"], name: "index_ssns_on_user_id"

  create_table "tags", force: true do |t|
    t.integer  "user_id"
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tags", ["user_id"], name: "index_tags_on_user_id"

  create_table "users", force: true do |t|
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
