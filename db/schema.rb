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

ActiveRecord::Schema.define(version: 20170210102120) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.text    "title"
    t.time    "start_time"
    t.time    "end_time"
    t.string  "pic1_url"
    t.string  "pic2_url"
    t.string  "pic3_url"
    t.date    "date"
    t.string  "location"
    t.float   "price"
    t.integer "experience_id"
    t.index ["experience_id"], name: "index_activities_on_experience_id", using: :btree
  end

  create_table "bookings", force: :cascade do |t|
    t.integer "users_id"
    t.integer "experiences_id"
    t.date    "trip_date"
    t.index ["experiences_id"], name: "index_bookings_on_experiences_id", using: :btree
    t.index ["users_id"], name: "index_bookings_on_users_id", using: :btree
  end

  create_table "experience_reviews", force: :cascade do |t|
    t.integer "users_id"
    t.integer "activites_id"
    t.float   "ratings"
    t.text    "comments"
    t.index ["activites_id"], name: "index_experience_reviews_on_activites_id", using: :btree
    t.index ["users_id"], name: "index_experience_reviews_on_users_id", using: :btree
  end

  create_table "experiences", force: :cascade do |t|
    t.integer "user_id"
    t.string  "title"
    t.string  "tagline"
    t.string  "poster_url"
    t.string  "provided"
    t.text    "notes"
    t.date    "deadline"
    t.text    "description"
    t.index ["user_id"], name: "index_experiences_on_user_id", using: :btree
  end

  create_table "transactions", force: :cascade do |t|
    t.integer "bookings_id"
    t.string  "type"
    t.float   "amount"
    t.string  "details"
    t.index ["bookings_id"], name: "index_transactions_on_bookings_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.string "avatar"
    t.string "gender"
    t.date   "birthday"
    t.string "telephone"
    t.string "city"
    t.text   "Country"
    t.text   "description"
    t.text   "education"
  end

  create_table "verifications", force: :cascade do |t|
    t.text   "nat_id"
    t.string "facebook"
    t.string "google"
    t.string "twitter"
    t.text   "phone"
    t.string "email"
  end

  add_foreign_key "activities", "experiences"
end
