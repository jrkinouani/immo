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

ActiveRecord::Schema.define(version: 20161108050842) do

  create_table "logements", force: :cascade do |t|
    t.text     "name"
    t.integer  "price"
    t.text     "desc"
    t.text     "desc_home"
    t.string   "city"
    t.string   "postal"
    t.string   "country"
    t.string   "street"
    t.string   "street_number"
    t.integer  "surface"
    t.integer  "capacity"
    t.integer  "bedroom"
    t.string   "image1"
    t.string   "image2"
    t.string   "image3"
    t.string   "image4"
    t.string   "image5"
    t.string   "image6"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end