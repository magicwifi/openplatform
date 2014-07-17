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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140702083307) do

  create_table "plugin_details", :force => true do |t|
    t.integer  "plugin_id"
    t.text     "detail"
    t.datetime "publish_time"
    t.string   "developer"
    t.string   "version"
    t.string   "category"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.text     "desc1"
    t.text     "desc2"
    t.text     "desc3"
  end

  create_table "plugins", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "imagename"
  end

  create_table "plugins_routers", :id => false, :force => true do |t|
    t.integer "plugin_id"
    t.integer "router_id"
  end

  add_index "plugins_routers", ["router_id", "plugin_id"], :name => "index_plugins_routers_on_router_id_and_plugin_id"

  create_table "routers", :force => true do |t|
    t.string   "mac"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
