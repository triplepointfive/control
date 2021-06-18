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

ActiveRecord::Schema.define(version: 2021_06_18_151556) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "executors", force: :cascade do |t|
    t.string "institute_id"
    t.string "institute_department"
    t.integer "employee_service_number"
    t.string "full_name"
    t.string "position"
    t.decimal "salary", precision: 11, scale: 2
    t.integer "work_experience"
    t.string "address"
  end

  create_table "institutes", force: :cascade do |t|
    t.string "title"
  end

  create_table "program_units", force: :cascade do |t|
    t.integer "project_id"
    t.string "title"
    t.string "project_name"
    t.date "development_start_date"
    t.date "planned_completion_date"
    t.date "actual_end_date"
    t.integer "executor_id"
    t.string "executors"
    t.integer "machine_time"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.decimal "funding_volume", precision: 11, scale: 2
    t.string "research_supervisor"
    t.date "start_development"
    t.date "planned_end_date"
    t.string "customer"
  end

end
