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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20141230065549) do

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "soliders", :force => true do |t|
    t.string   "name"
    t.integer  "age"
    t.boolean  "sex"
    t.float    "height"
    t.float    "weight"
    t.string   "IDNumber"
    t.string   "birthday"
    t.string   "num"
    t.integer  "score"
    t.string   "education"
    t.string   "recordin_unit"
    t.string   "recordin_people"
    t.string   "suo_leader"
    t.string   "zhian_leader"
    t.string   "ju_leader"
    t.string   "shangji_suggestion"
    t.string   "used_name"
    t.string   "nation"
    t.text     "household"
    t.string   "household_type"
    t.boolean  "marital_status"
    t.boolean  "education_status"
    t.text     "address"
    t.string   "phone"
    t.string   "father_IDNumber"
    t.string   "mother_IDNumber"
    t.string   "father_name"
    t.string   "mother_name"
    t.string   "father_workplace"
    t.string   "mother_workplace"
    t.string   "father_address"
    t.string   "mother_address"
    t.string   "father_contact"
    t.string   "mother_contact"
    t.string   "father_political"
    t.string   "mother_political"
    t.boolean  "father_attitude"
    t.boolean  "mother_attitude"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "hashed_password"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
