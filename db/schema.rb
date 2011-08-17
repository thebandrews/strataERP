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

ActiveRecord::Schema.define(:version => 20110817033606) do

  create_table "accounts", :force => true do |t|
    t.string   "name"
    t.string   "detail"
    t.string   "summary"
    t.string   "template"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "actuals", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "date"
    t.integer  "account_id"
    t.decimal  "ammount",    :precision => 10, :scale => 0
    t.integer  "cc_id"
  end

  create_table "cost_centers", :force => true do |t|
    t.string   "name"
    t.string   "detail"
    t.string   "summary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "forecasts", :force => true do |t|
    t.integer  "account_id"
    t.decimal  "value",      :precision => 10, :scale => 0
    t.integer  "cc_id"
    t.string   "period"
    t.string   "version"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role_type"
    t.string   "user_id"
  end

  create_table "user_logs", :force => true do |t|
    t.datetime "log_in"
    t.datetime "log_out"
    t.text     "report_access_list"
    t.text     "template_access_list"
    t.text     "report_update_list"
    t.text     "template_update_list"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "user_id"
  end

  create_table "users", :force => true do |t|
    t.string   "user_name"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
