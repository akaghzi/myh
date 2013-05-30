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

ActiveRecord::Schema.define(version: 20130530045438) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "allergies", force: true do |t|
    t.integer  "patient_id"
    t.string   "substance_name"
    t.string   "substance_type"
    t.string   "reaction"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contact_infos", force: true do |t|
    t.integer  "patient_id"
    t.string   "email"
    t.string   "alternate_phone"
    t.string   "address_line1"
    t.string   "address_line2"
    t.string   "city"
    t.string   "province"
    t.string   "country"
    t.string   "postal_code"
    t.string   "emergency_contact_name"
    t.string   "emergency_contact_relationship"
    t.string   "emergency_contact_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "current_medications", force: true do |t|
    t.integer  "patient_id"
    t.string   "name"
    t.string   "dosage"
    t.string   "frequency"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "immunizations", force: true do |t|
    t.integer  "patient_id"
    t.string   "immunization_for"
    t.integer  "immunization_year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "insurance_infos", force: true do |t|
    t.integer  "patient_id"
    t.string   "insurance_carrier"
    t.string   "insurance_member_id"
    t.string   "insurance_guarantor"
    t.string   "insurance_guarantor_relationship"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lab_tests", force: true do |t|
    t.string   "full_name"
    t.string   "short_name"
    t.string   "unit_of_measure"
    t.decimal  "low_threshold"
    t.decimal  "high_threshold"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patients", force: true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.date     "date_of_birth"
    t.string   "gender"
    t.string   "phone"
    t.string   "externalid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reg_answers", force: true do |t|
    t.integer  "patient_id"
    t.integer  "reg_question_id"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reg_questions", force: true do |t|
    t.string   "content"
    t.string   "gender"
    t.integer  "minimum_age"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "surgeries", force: true do |t|
    t.integer  "patient_id"
    t.string   "surgery_type"
    t.date     "surgery_date"
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
    t.datetime "visit_date"
    t.string   "visit_reason"
    t.text     "visit_note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vital_signs", force: true do |t|
    t.integer  "visit_id"
    t.decimal  "temperature"
    t.integer  "heart_rate"
    t.integer  "bp_systolic"
    t.integer  "bp_diastolic"
    t.integer  "respiratory_rate"
    t.integer  "weight"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
