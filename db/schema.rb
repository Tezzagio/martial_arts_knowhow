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

ActiveRecord::Schema.define(version: 20150112193037) do

  create_table "comments", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "martial_arts", force: true do |t|
    t.string   "name",       limit: nil
    t.integer  "user_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "martial_arts", ["user_id"], name: "index_martial_arts_on_user_id"

  create_table "regional_origins", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_comments", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "email"
    t.string   "reset_password_token"
    t.string   "encrypted_password"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count"
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
  end

  add_index "users", ["email"], name: "index_users_on_email"
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token"

  create_table "widgets", force: true do |t|
    t.string   "name",       limit: nil
    t.integer  "user_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "widgets", ["user_id"], name: "index_widgets_on_user_id"

end
