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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110910105831) do

  create_table "employee_details", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pairing_details", :force => true do |t|
    t.integer  "pair1_id"
    t.integer  "pair2_id"
    t.integer  "number_of_times_paired"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pairing_details", ["pair1_id", "pair2_id"], :name => "index_pairing_details_on_pair1_id_and_pair2_id", :unique => true
  add_index "pairing_details", ["pair1_id"], :name => "index_pairing_details_on_pair1_id"
  add_index "pairing_details", ["pair2_id"], :name => "index_pairing_details_on_pair2_id"

  create_table "pairing_martrixes", :force => true do |t|
    t.integer  "matrix_id"
    t.string   "project_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
