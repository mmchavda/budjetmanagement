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

ActiveRecord::Schema[8.0].define(version: 2025_07_11_110745) do
  create_table "budget_categories", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "budget"
    t.string "name"
    t.string "spending_limit_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "budget_id", null: false
    t.index ["budget_id"], name: "index_budget_categories_on_budget_id"
  end

  create_table "budget_phases", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "budget"
    t.string "name"
    t.string "voting_rules"
    t.string "participant_eligibility"
    t.string "start_date"
    t.string "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "budget_id", null: false
    t.index ["budget_id"], name: "index_budget_phases_on_budget_id"
  end

  create_table "budgets", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false
    t.decimal "total_amount", precision: 15, scale: 2, default: "0.0"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "impact_metrics", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "project"
    t.string "estimated_beneficiaries"
    t.string "timeline"
    t.string "sustainability_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "budget_id", null: false
    t.bigint "budget_category_id", null: false
    t.string "name", null: false
    t.text "description"
    t.decimal "allocated_amount", precision: 15, scale: 2, default: "0.0"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["budget_category_id"], name: "index_projects_on_budget_category_id"
    t.index ["budget_id"], name: "index_projects_on_budget_id"
  end

  add_foreign_key "budget_categories", "budgets"
  add_foreign_key "budget_phases", "budgets"
  add_foreign_key "projects", "budget_categories"
  add_foreign_key "projects", "budgets"
end
