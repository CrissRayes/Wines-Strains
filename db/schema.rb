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

ActiveRecord::Schema[7.0].define(version: 2022_06_02_022642) do
  create_table "strains", force: :cascade do |t|
    t.string "name"
    t.decimal "percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "strains_wines", id: false, force: :cascade do |t|
    t.integer "wine_id", null: false
    t.integer "strain_id", null: false
    t.index ["strain_id", "wine_id"], name: "index_strains_wines_on_strain_id_and_wine_id"
    t.index ["wine_id", "strain_id"], name: "index_strains_wines_on_wine_id_and_strain_id"
  end

  create_table "wines", force: :cascade do |t|
    t.string "brand"
    t.string "category"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
