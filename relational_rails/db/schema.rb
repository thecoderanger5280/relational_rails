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

ActiveRecord::Schema.define(version: 2022_10_13_192330) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pieces", force: :cascade do |t|
    t.string "name"
    t.integer "piece_number"
    t.boolean "broken"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "set_id"
    t.index ["set_id"], name: "index_pieces_on_set_id"
  end

  create_table "sets", force: :cascade do |t|
    t.string "name"
    t.integer "min_age"
    t.boolean "retired"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "pieces", "sets"
end
