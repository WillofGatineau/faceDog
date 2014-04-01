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

ActiveRecord::Schema.define(version: 20140331214353) do

  create_table "breeds", id: false, force: true do |t|
    t.string   "name"
    t.string   "group"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dogs", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "race"
    t.string   "color"
    t.integer  "age"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
    t.boolean  "gender"
  end

  create_table "images", force: true do |t|
    t.integer  "dog_id"
    t.string   "url"
    t.integer  "width"
    t.integer  "height"
    t.integer  "size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.text     "password"
    t.string   "forname"
    t.string   "lastname"
    t.integer  "age"
    t.string   "city"
    t.text     "occupation"
    t.text     "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
