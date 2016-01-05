# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151211122051) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.string   "datum"
    t.string   "tijdstip_aanvang"
    t.string   "tijdstip_vertrek"
    t.integer  "senior_id"
    t.integer  "ondersteuner_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "appointments", ["ondersteuner_id"], name: "index_appointments_on_ondersteuner_id", using: :btree
  add_index "appointments", ["senior_id"], name: "index_appointments_on_senior_id", using: :btree

  create_table "mantelzorgers", force: :cascade do |t|
    t.string   "voornaam"
    t.string   "achternaam"
    t.string   "email"
    t.string   "password"
    t.text     "adres"
    t.integer  "senior_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "mantelzorgers", ["senior_id"], name: "index_mantelzorgers_on_senior_id", using: :btree

  create_table "ondersteuners", force: :cascade do |t|
    t.string   "naam"
    t.string   "achternaam"
    t.string   "geboortedatum"
    t.string   "adres"
    t.string   "telefoonnummer"
    t.string   "rijbewijs"
    t.string   "paspoort"
    t.string   "kvk"
    t.string   "diploma"
    t.string   "specialiteit"
    t.string   "beschikbaarheid"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "seniors", force: :cascade do |t|
    t.string   "naam"
    t.string   "achternaam"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "mantelzorgers", "seniors"
end
