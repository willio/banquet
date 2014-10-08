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

<<<<<<< HEAD
=======

>>>>>>> FETCH_HEAD
ActiveRecord::Schema.define(version: 20141007070717) do

  create_table "customers", force: true do |t|
    t.string "name"
    t.string "date"
    t.string "status"
  end

  create_table "ingredients", force: true do |t|
    t.string  "name"
    t.float   "price"
    t.integer "item_id"
  end

  create_table "items", force: true do |t|
    t.string  "name"
    t.integer "customer_id"
  end

end
