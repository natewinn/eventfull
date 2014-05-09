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

ActiveRecord::Schema.define(version: 20140508192508) do

  create_table "comments", force: true do |t|
    t.string  "commenter"
    t.date    "comment_date"
    t.text    "comment_text"
    t.integer "commentable_id"
    t.string  "commentable_type"
  end

  create_table "events", force: true do |t|
    t.string  "event_name"
    t.date    "event_date"
    t.integer "user_id"
  end

  create_table "photos", force: true do |t|
    t.string  "photo_name"
    t.date    "photo_date"
    t.integer "event_id"
    t.string  "image"
    t.text    "photo_description"
  end

  create_table "photos_tags", id: false, force: true do |t|
    t.integer "photo_id"
    t.integer "tag_id"
  end

  create_table "tags", force: true do |t|
    t.string "tag_name"
  end

  create_table "users", force: true do |t|
    t.string "user_name"
    t.string "email"
    t.string "password"
    t.date   "birthday"
  end

end
