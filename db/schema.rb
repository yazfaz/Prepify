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
    t.integer  "course_progression_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "answers", ["course_progression_id"], name: "index_answers_on_course_progression_id", using: :btree
  add_index "answers", ["question_id"], name: "index_answers_on_question_id", using: :btree

  create_table "course_progressions", force: true do |t|
    t.integer  "user_id"
    t.integer  "subject_id"
    t.integer  "page_id"
    t.datetime "completed_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "course_progressions", ["page_id"], name: "index_course_progressions_on_page_id", using: :btree
  add_index "course_progressions", ["subject_id"], name: "index_course_progressions_on_subject_id", using: :btree
  add_index "course_progressions", ["user_id"], name: "index_course_progressions_on_user_id", using: :btree

  create_table "instructions", force: true do |t|
    t.text     "body"
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

  add_index "pages", ["pageable_id", "pageable_type"], name: "index_pages_on_pageable_id_and_pageable_type", using: :btree
  add_index "pages", ["subject_id"], name: "index_pages_on_subject_id", using: :btree

  create_table "questions", force: true do |t|
    t.text     "body"
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
