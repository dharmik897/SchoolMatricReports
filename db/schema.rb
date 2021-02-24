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

ActiveRecord::Schema.define(version: 2021_02_24_135539) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "matrics_details", force: :cascade do |t|
    t.bigint "year"
    t.bigint "wrote"
    t.bigint "passed"
    t.bigint "school_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_detail_id"], name: "index_matrics_details_on_school_detail_id"
  end

  create_table "school_details", force: :cascade do |t|
    t.bigint "emis"
    t.bigint "center_no"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "matrics_details", "school_details"
end
