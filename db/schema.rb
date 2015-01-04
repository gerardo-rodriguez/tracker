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

ActiveRecord::Schema.define(version: 20150104074138) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "asca_domains", force: true do |t|
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "asca_domains_sessions", id: false, force: true do |t|
    t.integer "session_id",     null: false
    t.integer "asca_domain_id", null: false
  end

  create_table "classifications", force: true do |t|
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "classifications_students", id: false, force: true do |t|
    t.integer "classification_id", null: false
    t.integer "student_id",        null: false
  end

  create_table "ethnicities", force: true do |t|
    t.string   "group"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ethnicities_students", id: false, force: true do |t|
    t.integer "student_id",   null: false
    t.integer "ethnicity_id", null: false
  end

  create_table "genders", force: true do |t|
    t.string   "classification"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grades", force: true do |t|
    t.string   "level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups_students", id: false, force: true do |t|
    t.integer "student_id", null: false
    t.integer "group_id",   null: false
  end

  create_table "interventions", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "interventions_sessions", id: false, force: true do |t|
    t.integer "session_id",      null: false
    t.integer "intervention_id", null: false
  end

  create_table "referrals", force: true do |t|
    t.string   "source"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "referrals_sessions", id: false, force: true do |t|
    t.integer "session_id",  null: false
    t.integer "referral_id", null: false
  end

  create_table "seen_bies", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "seen_bies_sessions", id: false, force: true do |t|
    t.integer "session_id", null: false
    t.integer "seen_by_id", null: false
  end

  create_table "sessions", force: true do |t|
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions_students", id: false, force: true do |t|
    t.integer "session_id", null: false
    t.integer "student_id", null: false
  end

  create_table "sessions_types", id: false, force: true do |t|
    t.integer "session_id", null: false
    t.integer "type_id",    null: false
  end

  create_table "students", force: true do |t|
    t.string   "ssid"
    t.integer  "grade_id"
    t.integer  "gender_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "students", ["grade_id"], name: "index_students_on_grade_id", using: :btree

  create_table "types", force: true do |t|
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
