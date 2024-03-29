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

ActiveRecord::Schema.define(version: 2022_02_10_220543) do

  create_table "boards", force: :cascade do |t|
    t.integer "game_id"
  end

  create_table "games", force: :cascade do |t|
    t.integer "board_id"
    t.boolean "win"
    t.string "move_count"
    t.string "integer"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
  end

  create_table "tiles", force: :cascade do |t|
    t.string "options"
    t.string "removes"
    t.boolean "active"
    t.integer "board_id"
    t.integer "number"
  end

  create_table "wins", force: :cascade do |t|
    t.integer "move_count"
    t.integer "win_count"
    t.integer "player_id"
  end

end
