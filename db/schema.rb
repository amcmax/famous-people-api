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

ActiveRecord::Schema.define(version: 2021_05_14_093757) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.string "excerpt"
    t.integer "word_count"
    t.string "url"
    t.integer "source_id"
    t.integer "language_id"
    t.integer "person_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["language_id"], name: "index_articles_on_language_id"
    t.index ["person_id"], name: "index_articles_on_person_id"
    t.index ["source_id"], name: "index_articles_on_source_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["code"], name: "index_countries_on_code"
    t.index ["name"], name: "index_countries_on_name"
  end

  create_table "languages", force: :cascade do |t|
    t.string "value"
    t.string "name"
    t.boolean "active", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_languages_on_name"
    t.index ["value"], name: "index_languages_on_value"
  end

  create_table "persons", force: :cascade do |t|
    t.string "first_name"
    t.string "second_name"
    t.integer "country_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_persons_on_country_id"
  end

  create_table "sources", force: :cascade do |t|
    t.string "name", null: false
    t.string "base_url"
    t.integer "status", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_sources_on_name", unique: true
  end

end
