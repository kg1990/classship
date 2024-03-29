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

ActiveRecord::Schema.define(version: 7) do

  create_table "accounts", force: true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "classship_invites", force: true do |t|
    t.integer  "classship_want_id"
    t.integer  "user_id"
    t.integer  "invite_user_id"
    t.boolean  "email_flag"
    t.boolean  "read_flag"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "classship_joins", force: true do |t|
    t.integer  "classship_want_id"
    t.integer  "user_id"
    t.integer  "join_user_id"
    t.boolean  "email_flag"
    t.boolean  "read_flag"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "classship_shows", force: true do |t|
    t.integer  "classship_want_id"
    t.time     "start_at"
    t.string   "html_title"
    t.string   "html_desciption"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "classship_wants", force: true do |t|
    t.integer  "user_id"
    t.integer  "target_user_id"
    t.time     "start_at"
    t.string   "html_title"
    t.string   "html_desciption"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_relations", force: true do |t|
    t.integer  "user_id"
    t.integer  "friend_user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "name"
    t.string   "crypted_password"
    t.string   "province"
    t.string   "city"
    t.string   "district"
    t.string   "school"
    t.string   "detail"
    t.string   "weibo"
    t.string   "weixin"
    t.string   "qq"
    t.string   "bio"
    t.string   "avatar_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
