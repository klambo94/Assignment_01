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

ActiveRecord::Schema.define(version: 20170205174352) do

  create_table "courses", force: :cascade do |t|
    t.integer  "course_number"
    t.string   "course_name"
    t.text     "course_description"
    t.string   "course_week_date"
    t.time     "course_time"
    t.integer  "course_room_number"
    t.string   "professor"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "detail_schedules", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedule_line_items", force: :cascade do |t|
    t.integer  "course_id"
    t.integer  "detail_schedule_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "quantity",           default: 0
    t.index ["course_id"], name: "index_schedule_line_items_on_course_id"
    t.index ["detail_schedule_id"], name: "index_schedule_line_items_on_detail_schedule_id"
  end

end
