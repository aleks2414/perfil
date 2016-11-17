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

ActiveRecord::Schema.define(version: 20161117014616) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "tests", force: :cascade do |t|
    t.string   "nombre"
    t.string   "email"
    t.integer  "l11"
    t.integer  "l12"
    t.integer  "l13"
    t.integer  "l14"
    t.float    "l1total"
    t.integer  "l21"
    t.integer  "l22"
    t.integer  "l23"
    t.integer  "l24"
    t.integer  "l25"
    t.integer  "l26"
    t.float    "l2total"
    t.integer  "l31"
    t.integer  "l32"
    t.integer  "l33"
    t.integer  "l34"
    t.float    "l3total"
    t.integer  "l41"
    t.integer  "l42"
    t.integer  "l43"
    t.integer  "l44"
    t.float    "l4total"
    t.integer  "l51"
    t.integer  "l52"
    t.integer  "l53"
    t.integer  "l54"
    t.integer  "l55"
    t.float    "l5total"
    t.integer  "l61"
    t.integer  "l62"
    t.integer  "l63"
    t.integer  "l64"
    t.float    "l6total"
    t.integer  "l71"
    t.integer  "l72"
    t.integer  "l73"
    t.integer  "l74"
    t.float    "l7total"
    t.integer  "l81"
    t.integer  "l82"
    t.integer  "l83"
    t.float    "l8total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
