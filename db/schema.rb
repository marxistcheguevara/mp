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

ActiveRecord::Schema.define(version: 20150424100647) do

  create_table "activities", force: :cascade do |t|
    t.integer  "examination_id", limit: 4
    t.integer  "doctor_id",      limit: 4
    t.integer  "patient_id",     limit: 4
    t.text     "notes",          limit: 65535
    t.string   "attachments",    limit: 255
    t.integer  "hospital_id",    limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "activities", ["examination_id", "doctor_id", "patient_id"], name: "examination_id", using: :btree
  add_index "activities", ["hospital_id"], name: "hospital_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "slug",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "doctors", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "pin",                    limit: 4,                null: false
    t.string   "first_name",             limit: 255, default: "", null: false
    t.string   "last_name",              limit: 255, default: "", null: false
    t.integer  "gender",                 limit: 4
    t.date     "dob"
    t.string   "address",                limit: 255
    t.integer  "marital_status",         limit: 4
    t.string   "profession",             limit: 255, default: "", null: false
    t.string   "phone",                  limit: 255
    t.string   "mobile",                 limit: 255
    t.integer  "city_id",                limit: 4
    t.integer  "hospital_id",            limit: 4
    t.integer  "role",                   limit: 4,   default: 0
  end

  add_index "doctors", ["email"], name: "index_doctors_on_email", unique: true, using: :btree
  add_index "doctors", ["first_name", "last_name"], name: "first_name", using: :btree
  add_index "doctors", ["pin"], name: "pin", unique: true, using: :btree
  add_index "doctors", ["reset_password_token"], name: "index_doctors_on_reset_password_token", unique: true, using: :btree

  create_table "examinations", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "shortname",  limit: 255
    t.float    "price",      limit: 24
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "examinations", ["name"], name: "name", using: :btree
  add_index "examinations", ["shortname"], name: "shortname", using: :btree

  create_table "hospitals", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.integer  "city_id",      limit: 4
    t.string   "address",      limit: 255
    t.string   "phone_number", limit: 255
    t.string   "fax",          limit: 255
    t.string   "web_site",     limit: 255
    t.string   "e_mail",       limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "pin",                    limit: 4,                null: false
    t.string   "first_name",             limit: 255,              null: false
    t.string   "last_name",              limit: 255,              null: false
    t.integer  "gender",                 limit: 4
    t.date     "dob"
    t.string   "address",                limit: 255
    t.integer  "marital_status",         limit: 4
    t.string   "profession",             limit: 255
    t.string   "phone",                  limit: 255
    t.string   "mobile",                 limit: 255
    t.integer  "city_id",                limit: 4
  end

  add_index "patients", ["email"], name: "index_patients_on_email", unique: true, using: :btree
  add_index "patients", ["first_name", "last_name"], name: "first_name", using: :btree
  add_index "patients", ["pin"], name: "pin", unique: true, using: :btree
  add_index "patients", ["reset_password_token"], name: "index_patients_on_reset_password_token", unique: true, using: :btree

  create_table "posts", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.string   "slug",        limit: 255
    t.text     "body",        limit: 65535
    t.integer  "category_id", limit: 4
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "image",       limit: 255
    t.integer  "view",        limit: 4,     default: 0
  end

end
