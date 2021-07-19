
ActiveRecord::Schema.define(version: 2021_03_24_234115) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alerts", force: :cascade do |t|
    t.string "event"
    t.string "image"
    t.string "info"
    t.string "date"
    t.string "time"
    t.string "place"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "group_alerts", force: :cascade do |t|
    t.bigint "group_id"
    t.bigint "alert_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["alert_id"], name: "index_group_alerts_on_alert_id"
    t.index ["group_id"], name: "index_group_alerts_on_group_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "description"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_groups_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "image"
    t.string "phone"
    t.string "bio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "group_alerts", "alerts"
  add_foreign_key "group_alerts", "groups"
  add_foreign_key "groups", "users"
end
