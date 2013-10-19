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

ActiveRecord::Schema.define(version: 20131019181023) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: true do |t|
    t.text     "result"
    t.datetime "correct_at"
    t.integer  "question_id"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "answers", ["course_id"], name: "index_answers_on_course_id", using: :btree
  add_index "answers", ["question_id"], name: "index_answers_on_question_id", using: :btree

  create_table "courses", force: true do |t|
    t.integer  "user_id"
    t.integer  "subject_id"
    t.integer  "page_id"
    t.datetime "completed_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "courses", ["page_id"], name: "index_courses_on_page_id", using: :btree
  add_index "courses", ["subject_id"], name: "index_courses_on_subject_id", using: :btree
  add_index "courses", ["user_id"], name: "index_courses_on_user_id", using: :btree

  create_table "instructions", force: true do |t|
    t.text     "body"
    t.text     "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", force: true do |t|
    t.integer  "sequence_id"
    t.integer  "pageable_id"
    t.string   "pageable_type"
    t.integer  "subject_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pages", ["subject_id"], name: "index_pages_on_subject_id", using: :btree

  create_table "questions", force: true do |t|
    t.text     "body"
    t.text     "image"
    t.text     "choices"
    t.text     "answers"
    t.text     "explanation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subjects", force: true do |t|
    t.string   "section"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.boolean  "admin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
