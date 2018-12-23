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

ActiveRecord::Schema.define(version: 2018_12_23_054953) do

  create_table "addresses", force: :cascade do |t|
    t.string "name"
    t.string "street"
    t.string "zip"
    t.string "city"
    t.integer "addressable_id"
    t.string "addressable_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "person"
    t.index ["addressable_type", "addressable_id"], name: "index_addresses_on_addressable_type_and_addressable_id"
  end

  create_table "applicant_skills", force: :cascade do |t|
    t.integer "applicant_id"
    t.integer "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["applicant_id"], name: "index_applicant_skills_on_applicant_id"
    t.index ["skill_id"], name: "index_applicant_skills_on_skill_id"
  end

  create_table "applicant_translations", force: :cascade do |t|
    t.integer "applicant_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slogan"
    t.string "family_status"
    t.index ["applicant_id"], name: "index_applicant_translations_on_applicant_id"
    t.index ["locale"], name: "index_applicant_translations_on_locale"
  end

  create_table "applicants", force: :cascade do |t|
    t.string "slogan"
    t.date "birthday"
    t.string "family_status"
    t.string "email"
    t.string "mobile_phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "applications", force: :cascade do |t|
    t.string "position"
    t.text "letter"
    t.string "auth_token"
    t.integer "applicant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "salary_expectations"
    t.date "availability"
    t.index ["applicant_id"], name: "index_applications_on_applicant_id"
  end

  create_table "chronicle_item_skills", force: :cascade do |t|
    t.integer "chronicle_item_id"
    t.integer "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "experience"
    t.date "started_at"
    t.date "ended_at"
    t.index ["chronicle_item_id"], name: "index_chronicle_item_skills_on_chronicle_item_id"
    t.index ["skill_id"], name: "index_chronicle_item_skills_on_skill_id"
  end

  create_table "chronicle_item_translations", force: :cascade do |t|
    t.integer "chronicle_item_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.string "description"
    t.string "graduation"
    t.index ["chronicle_item_id"], name: "index_chronicle_item_translations_on_chronicle_item_id"
    t.index ["locale"], name: "index_chronicle_item_translations_on_locale"
  end

  create_table "chronicle_items", force: :cascade do |t|
    t.date "started_at"
    t.date "ended_at"
    t.string "title"
    t.text "description"
    t.integer "position"
    t.integer "employment"
    t.string "badge"
    t.boolean "top", default: false
    t.string "type"
    t.string "graduation"
    t.integer "applicant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "order"
    t.index ["applicant_id"], name: "index_chronicle_items_on_applicant_id"
  end

  create_table "information", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "information_type", default: 0
    t.string "type"
    t.integer "informable_id"
    t.string "informable_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "url"
    t.boolean "top", default: false
    t.index ["informable_type", "informable_id"], name: "index_information_on_informable_type_and_informable_id"
  end

  create_table "information_translations", force: :cascade do |t|
    t.integer "information_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.string "description"
    t.index ["information_id"], name: "index_information_translations_on_information_id"
    t.index ["locale"], name: "index_information_translations_on_locale"
  end

end
