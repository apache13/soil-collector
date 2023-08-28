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

ActiveRecord::Schema[7.0].define(version: 2023_08_28_135449) do
  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.text "address"
    t.text "remark"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "code"
  end

  create_table "limes", force: :cascade do |t|
    t.integer "sample_id", null: false
    t.float "weight"
    t.float "woodruff"
    t.float "ph1"
    t.float "ph2"
    t.float "ph3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sample_id"], name: "index_limes_on_sample_id"
  end

  create_table "oms", force: :cascade do |t|
    t.integer "sample_id", null: false
    t.float "weight"
    t.float "K2CrO7_V1"
    t.float "K2CrO7_N1"
    t.float "FeSO4_1"
    t.float "FeSO4_2"
    t.float "FeSO4_3"
    t.float "FeSO4_N2"
    t.float "OC"
    t.float "OM"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sample_id"], name: "index_oms_on_sample_id"
  end

  create_table "phs", force: :cascade do |t|
    t.integer "sample_id", null: false
    t.float "weight"
    t.float "or"
    t.float "ph1"
    t.float "ph2"
    t.float "ph3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sample_id"], name: "index_phs_on_sample_id"
  end

  create_table "requests", force: :cascade do |t|
    t.integer "customer_id", null: false
    t.date "receive"
    t.boolean "ph"
    t.boolean "lime"
    t.boolean "om"
    t.boolean "p"
    t.boolean "k"
    t.string "channel"
    t.text "remark"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "code"
    t.index ["customer_id"], name: "index_requests_on_customer_id"
  end

  create_table "samples", force: :cascade do |t|
    t.integer "request_id", null: false
    t.string "code"
    t.text "detail"
    t.text "location"
    t.string "plant"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["request_id"], name: "index_samples_on_request_id"
  end

  add_foreign_key "limes", "samples"
  add_foreign_key "oms", "samples"
  add_foreign_key "phs", "samples"
  add_foreign_key "requests", "customers"
  add_foreign_key "samples", "requests"
end
