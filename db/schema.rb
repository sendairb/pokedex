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

ActiveRecord::Schema[7.0].define(version: 2021_07_26_161055) do
  create_table "pokemons", force: :cascade do |t|
    t.string "name", null: false
    t.string "type1", null: false
    t.string "type2"
    t.integer "national_pokedex_no", null: false
    t.integer "regional_pokedex_no", null: false
    t.boolean "appear_on_sword", null: false
    t.boolean "appear_on_shield", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "regional_pokedex_id"
    t.index ["regional_pokedex_id"], name: "index_pokemons_on_regional_pokedex_id"
  end

  create_table "regional_pokedexes", force: :cascade do |t|
    t.string "name", null: false
    t.string "display_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "pokemons", "regional_pokedexes"
end
