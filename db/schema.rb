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

ActiveRecord::Schema.define(version: 20130518062253) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lab_tests", force: true do |t|
    t.string   "full_name"
    t.string   "short_name"
    t.string   "unit_of_measure"
    t.decimal  "low_threshold"
    t.decimal  "high_threshold"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "med_test_types", force: true do |t|
    t.string   "full_name"
    t.string   "short_name"
    t.string   "unit_of_measure"
    t.string   "lab_type"
    t.boolean  "essential"
    t.decimal  "minimum_threshold"
    t.decimal  "maximum_threshold"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "minimum_age"
  end

  create_table "med_tests", force: true do |t|
    t.integer  "patient_id"
    t.integer  "visit_id"
    t.integer  "med_test_type_id"
    t.decimal  "measurement"
    t.text     "mearsurement_note"
    t.datetime "ordered_at"
    t.datetime "reviewed_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patients", force: true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.date     "date_of_birth"
    t.string   "sex"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "externalid"
  end

  create_table "reg_answers", force: true do |t|
    t.integer  "reg_question_id"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "patient_id"
  end

  create_table "reg_questions", force: true do |t|
    t.string   "content"
    t.string   "sex"
    t.integer  "minimum_age"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "user_type"
    t.string   "session_cookie"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "visit_lab_test_xrefs", force: true do |t|
    t.integer  "visit_id"
    t.integer  "lab_test_id"
    t.decimal  "measurement"
    t.date     "received_at"
    t.date     "reviewed_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "visits", force: true do |t|
    t.integer  "patient_id"
    t.date     "visit_date"
    t.string   "visit_reason"
    t.text     "visit_note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vital_signs", force: true do |t|
    t.integer  "patient_id"
    t.integer  "visit_id"
    t.decimal  "temperature"
    t.integer  "heart_rate"
    t.integer  "bp_systolic"
    t.integer  "bp_diastolic"
    t.integer  "respiratory_rate"
    t.integer  "weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
