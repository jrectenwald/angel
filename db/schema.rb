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

ActiveRecord::Schema.define(version: 20170226220125) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "conversations", force: :cascade do |t|
    t.string   "answer_1"
    t.string   "answer_2"
    t.string   "answer_3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "product_id"
    t.integer "quantity"
    t.integer "user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string  "name"
    t.float   "price"
    t.string  "color"
    t.string  "size"
    t.string  "fit"
    t.integer "company_id"
    t.string  "image_url"
  end

  create_table "questions", force: :cascade do |t|
    t.string   "query"
    t.integer  "company_id"
    t.integer  "confidence"
    t.integer  "conversation_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "response_histories", force: :cascade do |t|
    t.integer "question_id"
    t.integer "user_id"
    t.integer "order_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "role"
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "age"
    t.string   "gender"
    t.integer  "zip"
    t.string   "email"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
