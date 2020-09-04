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

ActiveRecord::Schema.define(version: 20200904044318) do

  create_table "goals", force: :cascade do |t|
    t.string "name"
    t.text   "description"
    t.date   "deadline"
  end

  create_table "objective1s", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "goal_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.date     "deadline"
  end

  create_table "objective2s", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "goal_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.date     "deadline"
  end

  create_table "objective3s", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "goal_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.date     "deadline"
  end

  create_table "objective4s", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "goal_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.date     "deadline"
  end

  create_table "strategies", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "goal_id"
    t.integer  "objective1_id"
    t.integer  "objective2_id"
    t.integer  "objective3_id"
    t.integer  "objective4_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.date     "deadline"
  end

  create_table "tactics", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "goal_id"
    t.integer  "objective_1_id"
    t.integer  "objective_2_id"
    t.integer  "objective_3_id"
    t.integer  "objective_4_id"
    t.integer  "strategy_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.date     "deadline"
  end

end
