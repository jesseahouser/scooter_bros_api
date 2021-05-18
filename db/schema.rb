ActiveRecord::Schema.define(version: 2021_05_18_194057) do

  create_table "bros", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "scooter_bros", force: :cascade do |t|
    t.integer "scooter_id", null: false
    t.integer "bro_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bro_id"], name: "index_scooter_bros_on_bro_id"
    t.index ["scooter_id"], name: "index_scooter_bros_on_scooter_id"
  end

  create_table "scooters", force: :cascade do |t|
    t.string "brand"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "scooter_bros", "bros"
  add_foreign_key "scooter_bros", "scooters"
end
