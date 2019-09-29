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

ActiveRecord::Schema.define(version: 20190928212933) do

  create_table "cases", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "title", limit: 50
    t.string "type_case", limit: 50
    t.string "complainant_cin", limit: 8
    t.string "complainant_first_name", limit: 30
    t.string "complainant_last_name", limit: 30
    t.string "complainant_telephone", limit: 8
    t.string "location"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "governorates", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.integer "population"
    t.string "zone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "police_stations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "title", limit: 60
    t.string "address", limit: 50
    t.integer "postal_code"
    t.string "telephone", limit: 8
    t.string "fax", limit: 8
    t.integer "governorate_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name"
    t.string "title"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "the_cases", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "title"
    t.string "type_case"
    t.string "complainant_cin"
    t.string "complainant_first_name"
    t.string "complainant_last_name"
    t.string "complainant_telephone"
    t.string "location"
    t.string "address"
    t.integer "police_station_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "cin", limit: 9
    t.string "first_name", limit: 60
    t.string "last_name", limit: 60
    t.string "type_agent", limit: 30
    t.integer "rule", default: 1
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
