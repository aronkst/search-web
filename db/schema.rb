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

ActiveRecord::Schema[7.0].define(version: 2022_09_15_010227) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "searches", force: :cascade do |t|
    t.string "title", null: false
    t.string "url", null: false
    t.boolean "javascript", default: false, null: false
    t.text "json", default: "", null: false
    t.string "next_page", default: "", null: false
    t.integer "count_pages", default: 1, null: false
    t.text "html", default: "", null: false
    t.boolean "finish", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end