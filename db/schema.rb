ActiveRecord::Schema.define(version: 2020_12_30_124649) do

  create_table "properties", force: :cascade do |t|
    t.string "name"
    t.integer "rent"
    t.text "address"
    t.integer "age"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stations", force: :cascade do |t|
    t.string "route"
    t.string "name"
    t.integer "minites"
    t.integer "property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["property_id"], name: "index_stations_on_property_id"
  end

end
