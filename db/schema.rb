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

ActiveRecord::Schema.define(:version => 20101007000500) do

  create_table "accounts", :force => true do |t|
  end

  create_table "cache_taggings", :force => true do |t|
    t.string "url"
    t.string "tag"
  end

  create_table "contents", :force => true do |t|
    t.integer  "site_id"
    t.integer  "section_id"
    t.string   "type"
    t.string   "title",      :default => "", :null => false
    t.string   "slug",       :default => "", :null => false
    t.text     "body",       :default => "", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "filter"
    t.text     "body_html"
  end

  create_table "sections", :force => true do |t|
    t.integer  "site_id"
    t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.string   "type"
    t.string   "name",       :default => "", :null => false
    t.string   "slug",       :default => "", :null => false
    t.string   "path",       :default => "", :null => false
    t.integer  "level"
    t.text     "options"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sites", :force => true do |t|
    t.integer  "account_id"
    t.string   "name",       :default => "", :null => false
    t.string   "host",       :default => "", :null => false
    t.string   "title",      :default => "", :null => false
    t.string   "subtitle",   :default => ""
    t.string   "timezone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
