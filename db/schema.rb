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

ActiveRecord::Schema.define(version: 20180323145922) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "distribution_channels", force: :cascade do |t|
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "giveaway_action_settings", force: :cascade do |t|
    t.bigint "giveaway_id"
    t.bigint "distribution_channel_id"
    t.integer "ticket_q"
    t.string "like_url"
    t.string "share_url"
    t.string "video_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["distribution_channel_id"], name: "index_giveaway_action_settings_on_distribution_channel_id"
    t.index ["giveaway_id"], name: "index_giveaway_action_settings_on_giveaway_id"
  end

  create_table "giveaways", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "status"
    t.datetime "begin_giveaway"
    t.datetime "end_giveaway"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_giveaways_on_user_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "giveaway_action_setting_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["giveaway_action_setting_id"], name: "index_tickets_on_giveaway_action_setting_id"
    t.index ["user_id"], name: "index_tickets_on_user_id"
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
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.date "birth_date"
    t.string "username"
    t.text "activity_description"
    t.integer "followers_q"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "winable_products", force: :cascade do |t|
    t.bigint "giveaway_id"
    t.integer "photo"
    t.decimal "value"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["giveaway_id"], name: "index_winable_products_on_giveaway_id"
  end

  create_table "winners", force: :cascade do |t|
    t.bigint "winable_product_id"
    t.bigint "ticket_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ticket_id"], name: "index_winners_on_ticket_id"
    t.index ["winable_product_id"], name: "index_winners_on_winable_product_id"
  end

  add_foreign_key "giveaway_action_settings", "distribution_channels"
  add_foreign_key "giveaway_action_settings", "giveaways"
  add_foreign_key "giveaways", "users"
  add_foreign_key "tickets", "giveaway_action_settings"
  add_foreign_key "tickets", "users"
  add_foreign_key "winable_products", "giveaways"
  add_foreign_key "winners", "tickets"
  add_foreign_key "winners", "winable_products"
end
