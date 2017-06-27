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

ActiveRecord::Schema.define(version: 20170626132757) do

  create_table "comments", force: :cascade do |t|
    t.string   "userid"
    t.string   "content"
    t.integer  "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "imgs", force: :cascade do |t|
    t.integer  "post_id"
    t.string   "img_url"
    t.string   "flag",       default: "0"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "userid"
    t.string   "email"
    t.string   "phone"
    t.string   "title",       default: "기본제목값"
    t.string   "purpose"
    t.string   "money"
    t.string   "date"
    t.string   "situation"
    t.string   "content",     default: "내용을 입력해주세요."
    t.string   "developname"
    t.string   "finalmoney",  default: "."
    t.string   "finaltime",   default: "."
    t.string   "intro",       default: "."
    t.string   "name",        default: "."
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.text     "name",                   default: "", null: false
    t.text     "level",                  default: "", null: false
    t.text     "job",                    default: "", null: false
    t.text     "phone",                  default: "", null: false
    t.text     "carrer",                 default: "", null: false
    t.text     "money",                  default: "", null: false
    t.text     "time",                   default: "", null: false
    t.text     "status",                 default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
