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

ActiveRecord::Schema.define(version: 20130612052111) do

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

  create_table "appointments", force: true do |t|
    t.integer  "user_id"
    t.integer  "patient_id"
    t.datetime "appointment_time"
    t.string   "appointment_type"
    t.string   "appointment_reason"
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

  create_table "contraceptive_histories", force: true do |t|
    t.integer  "patient_id"
    t.string   "contraceptive_type"
    t.string   "contraceptive_problems"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contraceptives", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "current_medications", force: true do |t|
    t.integer  "patient_id"
    t.string   "name"
    t.string   "dosage"
    t.string   "frequency"
    t.string   "route"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diseases", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gynecology_histories", force: true do |t|
    t.integer  "patient_id"
    t.string   "problem_type"
    t.date     "problem_date"
    t.text     "followup"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gynecology_problems", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hospitalizations", force: true do |t|
    t.integer  "patient_id"
    t.string   "hospitalization_reason"
    t.date     "hospitalization_date"
    t.integer  "hospitalization_duration"
    t.text     "hospitalization_note"
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

  create_table "medical_histories", force: true do |t|
    t.integer  "patient_id"
    t.string   "disease"
    t.date     "diagnosed_at"
    t.date     "cured_at"
    t.string   "self_or_family"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "medical_histories", ["patient_id"], name: "index_medical_histories_on_patient_id", using: :btree

  create_table "medication_frequencies", force: true do |t|
    t.string   "full_name"
    t.string   "description"
    t.string   "short_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "medication_routes", force: true do |t|
    t.string   "full_name"
    t.string   "description"
    t.string   "short_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menstrual_histories", force: true do |t|
    t.integer  "patient_id"
    t.integer  "onset_age"
    t.boolean  "normal_first_day_of_last_period"
    t.integer  "period_interval"
    t.string   "problems_with_period"
    t.string   "past_problems_with_period"
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
    t.text     "summary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pregnancy_histories", force: true do |t|
    t.integer  "patient_id"
    t.boolean  "currently_pregnant"
    t.integer  "full_term_births"
    t.integer  "preterm_births"
    t.integer  "spont_miscarriages"
    t.integer  "elective_abortions"
    t.integer  "living_children"
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

  create_table "relationships", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "social_histories", force: true do |t|
    t.integer  "patient_id"
    t.boolean  "smoking"
    t.integer  "smoking_quantity"
    t.boolean  "drinking"
    t.integer  "drinking_quantity"
    t.boolean  "physical_excercise"
    t.integer  "excercise_per_day"
    t.boolean  "substance_abuse"
    t.string   "substance_type"
    t.string   "profession"
    t.string   "pet"
    t.boolean  "living_with_family"
    t.string   "marital_status"
    t.text     "note"
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

  create_table "vaccines", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "visit_lab_test_xrefs", force: true do |t|
    t.integer  "visit_id"
    t.integer  "lab_test_id"
    t.decimal  "measurement"
    t.datetime "received_at"
    t.datetime "reviewed_at"
    t.text     "lab_note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "visits", force: true do |t|
    t.integer  "patient_id"
    t.datetime "visit_date"
    t.string   "visit_reason"
    t.boolean  "drug_allergy"
    t.boolean  "drug_interaction"
    t.text     "s_note"
    t.text     "o_note"
    t.text     "a_note"
    t.text     "p_note"
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
