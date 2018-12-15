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

ActiveRecord::Schema.define(version: 2018_12_14_070009) do

  create_table "amazon_kindle_unlimiteds", force: :cascade do |t|
    t.integer "price"
    t.date "issue_date"
    t.integer "update_period"
    t.string "status"
    t.text "memo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "amazon_musics", force: :cascade do |t|
    t.integer "price"
    t.date "issue_date"
    t.integer "update_period"
    t.string "status"
    t.text "memo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "amazon_primes", force: :cascade do |t|
    t.integer "price"
    t.date "issue_date"
    t.integer "update_period"
    t.string "status"
    t.text "memo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "apple_musics", force: :cascade do |t|
    t.integer "price"
    t.date "issue_date"
    t.integer "update_period"
    t.string "status"
    t.text "memo"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "au_video_passes", force: :cascade do |t|
    t.integer "price"
    t.date "issue_date"
    t.integer "update_period"
    t.string "status"
    t.text "memo"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "d_anime_stores", force: :cascade do |t|
    t.integer "price"
    t.date "issue_date"
    t.integer "update_period"
    t.string "status"
    t.text "memo"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "d_tvs", force: :cascade do |t|
    t.integer "price"
    t.date "issue_date"
    t.integer "update_period"
    t.string "status"
    t.text "memo"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fods", force: :cascade do |t|
    t.integer "price"
    t.date "issue_date"
    t.integer "update_period"
    t.string "status"
    t.text "memo"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "google_play_musics", force: :cascade do |t|
    t.integer "price"
    t.date "issue_date"
    t.integer "update_period"
    t.string "status"
    t.text "memo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "hulus", force: :cascade do |t|
    t.integer "price"
    t.date "issue_date"
    t.integer "update_period"
    t.string "status"
    t.text "memo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "line_musics", force: :cascade do |t|
    t.integer "price"
    t.date "issue_date"
    t.integer "update_period"
    t.string "status"
    t.text "memo"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "netflixes", force: :cascade do |t|
    t.integer "price"
    t.date "issue_date"
    t.integer "update_period"
    t.string "status"
    t.text "memo"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "play_station_networks", force: :cascade do |t|
    t.integer "price"
    t.date "issue_date"
    t.integer "update_period"
    t.string "status"
    t.text "memo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "spotifies", force: :cascade do |t|
    t.integer "price"
    t.date "issue_date"
    t.integer "update_period"
    t.string "status"
    t.text "memo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "unexts", force: :cascade do |t|
    t.integer "price"
    t.date "issue_date"
    t.integer "update_period"
    t.string "status"
    t.text "memo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "you_tube_premia", force: :cascade do |t|
    t.integer "price"
    t.date "issue_date"
    t.integer "update_period"
    t.string "status"
    t.text "memo"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
