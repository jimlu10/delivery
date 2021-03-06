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

ActiveRecord::Schema.define(version: 2021_01_30_075540) do

  create_table "configurations", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "courier_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "create_processor_id"
    t.bigint "tracking_processor_id"
    t.index ["courier_id"], name: "index_configurations_on_courier_id"
    t.index ["create_processor_id"], name: "fk_rails_d6f2600f35"
    t.index ["tracking_processor_id"], name: "fk_rails_72ec6eecbd"
  end

  create_table "couriers", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "key", null: false
    t.string "name", null: false
    t.string "tracking_number_digits", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "configuration_id"
    t.index ["configuration_id"], name: "index_couriers_on_configuration_id"
  end

  create_table "guides", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "tracking_number", null: false
    t.string "status", default: "created", null: false
    t.bigint "courier_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["courier_id"], name: "index_guides_on_courier_id"
  end

  create_table "processors", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "key", null: false
    t.string "name", null: false
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "configurations", "couriers"
  add_foreign_key "configurations", "processors", column: "create_processor_id"
  add_foreign_key "configurations", "processors", column: "tracking_processor_id"
  add_foreign_key "couriers", "configurations"
  add_foreign_key "guides", "couriers"
end
