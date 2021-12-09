# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_12_09_051558) do

  create_table "base_item_overrides", force: :cascade do |t|
    t.integer "base_item_id", null: false
    t.integer "item_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["base_item_id"], name: "index_base_item_overrides_on_base_item_id"
    t.index ["item_id"], name: "index_base_item_overrides_on_item_id"
  end

  create_table "base_item_predicates", force: :cascade do |t|
    t.integer "base_item_override_id", null: false
    t.string "key"
    t.string "value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["base_item_override_id"], name: "index_base_item_predicates_on_base_item_override_id"
  end

  create_table "base_items", force: :cascade do |t|
    t.integer "model_type_id", null: false
    t.string "path"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["model_type_id"], name: "index_base_items_on_model_type_id"
  end

  create_table "items", force: :cascade do |t|
    t.integer "base_item_id", null: false
    t.integer "user_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["base_item_id"], name: "index_items_on_base_item_id"
    t.index ["user_id"], name: "index_items_on_user_id"
  end

  create_table "model_types", force: :cascade do |t|
    t.string "value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: 6
    t.datetime "remember_created_at", precision: 6
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "base_item_overrides", "base_items"
  add_foreign_key "base_item_overrides", "items"
  add_foreign_key "base_item_predicates", "base_item_overrides"
  add_foreign_key "base_items", "model_types"
  add_foreign_key "items", "base_items"
  add_foreign_key "items", "users"
end
