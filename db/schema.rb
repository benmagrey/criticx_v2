# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_20_024049) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "critics", force: :cascade do |t|
    t.string "username"
    t.text "body"
    t.bigint "games_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "title"
    t.index ["games_id"], name: "index_critics_on_games_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.string "genre"
    t.integer "price"
    t.date "release_date"
  end

  add_foreign_key "critics", "games", column: "games_id"
end
