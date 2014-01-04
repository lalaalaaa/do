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

ActiveRecord::Schema.define(version: 20140104230655) do

  create_table "categories", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.string   "color"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "category_goals", force: true do |t|
    t.integer  "category_id"
    t.integer  "goal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "goal_tasks", force: true do |t|
    t.integer  "goal_id"
    t.integer  "task_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "goals", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "due_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "parent_goal_id"
    t.boolean  "is_repeating"
    t.integer  "frequency"
  end

  add_index "goals", ["parent_goal_id"], name: "index_goals_on_parent_goal_id"

  create_table "tasks", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "due_date"
  end

end
