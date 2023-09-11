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

ActiveRecord::Schema[7.0].define(version: 2023_09_02_043807) do
  create_table "abstracts", force: :cascade do |t|
    t.integer "item_id", null: false
    t.string "language"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_abstracts_on_item_id"
  end

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "alternative_titles", force: :cascade do |t|
    t.integer "item_id", null: false
    t.string "language"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_alternative_titles_on_item_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "title"
    t.string "creator"
    t.string "department"
    t.integer "teacher_id", null: false
    t.string "language"
    t.date "date_submitted"
    t.date "date_replied"
    t.string "format_extent_mime"
    t.integer "format_extent_page"
    t.string "doc_type"
    t.string "rights_location"
    t.string "rights_security_classification"
    t.string "rights_access_rights"
    t.string "degree_category"
    t.string "degree_grantor"
    t.string "degree_descipline"
    t.string "degree_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teacher_id"], name: "index_items_on_teacher_id"
  end

  create_table "keywords", force: :cascade do |t|
    t.integer "item_id", null: false
    t.string "language"
    t.string "word"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_keywords_on_item_id"
  end

  create_table "references", force: :cascade do |t|
    t.integer "item_id", null: false
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_references_on_item_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.string "institution"
    t.text "intro"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tocs", force: :cascade do |t|
    t.integer "item_id", null: false
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_tocs_on_item_id"
  end

  add_foreign_key "abstracts", "items"
  add_foreign_key "alternative_titles", "items"
  add_foreign_key "items", "teachers"
  add_foreign_key "keywords", "items"
  add_foreign_key "references", "items"
  add_foreign_key "tocs", "items"
end
