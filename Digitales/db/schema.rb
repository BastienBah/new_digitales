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

ActiveRecord::Schema.define(version: 20170614134733) do

  create_table "indefinitions", force: :cascade do |t|
    t.string   "name"
    t.text     "texte"
    t.string   "url"
    t.integer  "variable_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["variable_id"], name: "index_indefinitions_on_variable_id"
  end

  create_table "indefinitions_portraits", force: :cascade do |t|
    t.integer "indefinition_id"
    t.integer "portrait_id"
    t.index ["indefinition_id"], name: "index_indefinitions_portraits_on_indefinition_id"
    t.index ["portrait_id"], name: "index_indefinitions_portraits_on_portrait_id"
  end

  create_table "indefinitions_variables", force: :cascade do |t|
    t.integer "variable_id"
    t.integer "indefinition_id"
    t.index ["indefinition_id"], name: "index_indefinitions_variables_on_indefinition_id"
    t.index ["variable_id"], name: "index_indefinitions_variables_on_variable_id"
  end

  create_table "portraits", force: :cascade do |t|
    t.string   "name"
    t.string   "auteur"
    t.string   "url"
    t.string   "description"
    t.integer  "variable_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["variable_id"], name: "index_portraits_on_variable_id"
  end

  create_table "portraits_variables", force: :cascade do |t|
    t.integer "variable_id"
    t.integer "portrait_id"
    t.index ["portrait_id"], name: "index_portraits_variables_on_portrait_id"
    t.index ["variable_id"], name: "index_portraits_variables_on_variable_id"
  end

  create_table "variables", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "variables_indefinitions", force: :cascade do |t|
    t.integer "variable_id"
    t.integer "indefinition_id"
    t.index ["indefinition_id"], name: "index_variables_indefinitions_on_indefinition_id"
    t.index ["variable_id"], name: "index_variables_indefinitions_on_variable_id"
  end

end
