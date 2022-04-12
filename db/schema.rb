ActiveRecord::Schema.define(version: 2022_04_12_025437) do
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teas", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "temperature"
    t.integer "brew_time"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
