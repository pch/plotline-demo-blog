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

ActiveRecord::Schema.define(version: 20160316083127) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "plotline_entries", force: :cascade do |t|
    t.string   "type"
    t.string   "title"
    t.string   "slug"
    t.text     "body"
    t.json     "payload"
    t.datetime "published_at"
    t.integer  "status",       default: 0
    t.text     "tags",         default: [],              array: true
    t.integer  "parent_id"
    t.string   "checksum"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["parent_id"], name: "index_plotline_entries_on_parent_id", using: :btree
    t.index ["slug"], name: "index_plotline_entries_on_slug", using: :btree
    t.index ["status"], name: "index_plotline_entries_on_status", using: :btree
    t.index ["tags"], name: "index_plotline_entries_on_tags", using: :gin
    t.index ["type"], name: "index_plotline_entries_on_type", using: :btree
  end

  create_table "plotline_entry_search_data", force: :cascade do |t|
    t.integer  "entry_id"
    t.string   "attr_name"
    t.tsvector "search_data"
    t.text     "raw_data"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["entry_id"], name: "index_plotline_entry_search_data_on_entry_id", using: :btree
    t.index ["search_data"], name: "idx_search_data", using: :gin
  end

  create_table "plotline_images", force: :cascade do |t|
    t.string   "image"
    t.string   "token"
    t.integer  "width"
    t.integer  "height"
    t.float    "ratio"
    t.integer  "file_size"
    t.string   "content_type"
    t.json     "exif"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["token"], name: "index_plotline_images_on_token", using: :btree
  end

  create_table "plotline_users", force: :cascade do |t|
    t.string   "email"
    t.string   "name"
    t.string   "password_digest"
    t.string   "auth_token"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
