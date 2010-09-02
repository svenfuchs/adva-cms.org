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

ActiveRecord::Schema.define(:version => 20100816134006) do

  create_table "accounts", :force => true do |t|
  end

  create_table "addresses", :force => true do |t|
    t.integer  "addressable_id"
    t.string   "addressable_type"
    t.string   "name"
    t.string   "street"
    t.string   "zipcode"
    t.string   "city"
    t.string   "region"
    t.string   "country"
    t.string   "pobox"
    t.string   "delivery"
    t.string   "extended"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cnet_product_translations", :force => true do |t|
    t.integer  "cnet_product_id"
    t.string   "locale"
    t.text     "description"
    t.text     "marketing_text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cnet_product_translations", ["cnet_product_id"], :name => "index_c7a0768817fff7f6d69bb973af1a431593639beb"
  add_index "cnet_product_translations", ["locale", "cnet_product_id"], :name => "idx_cnet_product_translations_locale_cnet_product_id", :unique => true

  create_table "cnet_products", :force => true do |t|
    t.integer  "product_id"
    t.integer  "category_id"
    t.integer  "manufacturer_id"
    t.string   "product_number",           :limit => 40
    t.string   "manufacturer_part_number", :limit => 40
    t.string   "status",                   :limit => 4
    t.string   "cat_id",                   :limit => 2
    t.string   "mkt_id",                   :limit => 10
    t.string   "img_id",                   :limit => 10
    t.string   "mf_id",                    :limit => 10
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cnet_products", ["product_number"], :name => "ix_cnet_products_product_number", :unique => true

  create_table "contact_addresses", :force => true do |t|
    t.integer  "addressable_id"
    t.string   "addressable_type"
    t.string   "street"
    t.string   "zipcode"
    t.string   "city"
    t.string   "region"
    t.string   "country"
    t.string   "pobox"
    t.string   "delivery"
    t.string   "extended"
    t.string   "location"
    t.boolean  "preferred"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", :force => true do |t|
    t.string   "gender"
    t.string   "prefix"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "suffix"
    t.string   "nickname"
    t.date     "born_on"
    t.string   "photo"
    t.string   "sound"
    t.text     "note"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
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
  end

  create_table "itemizeds", :force => true do |t|
    t.integer  "shipping_address_id"
    t.integer  "billing_address_id"
    t.string   "type"
    t.string   "email"
    t.string   "payment_method"
    t.string   "delivery_method"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.integer  "itemized_id"
    t.integer  "product_id"
    t.integer  "quantity"
    t.integer  "price"
    t.integer  "vat"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", :force => true do |t|
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.integer "account_id"
    t.string  "name"
    t.string  "slug"
    t.string  "number"
    t.text    "description"
    t.integer "price"
    t.integer "vat"
  end

  create_table "sections", :force => true do |t|
    t.integer  "site_id"
    t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.string   "type"
    t.string   "title",      :default => "", :null => false
    t.string   "slug",       :default => "", :null => false
    t.string   "path",       :default => "", :null => false
    t.string   "level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sites", :force => true do |t|
    t.integer  "account_id"
    t.string   "name",       :default => "", :null => false
    t.string   "host",       :default => "", :null => false
    t.string   "title",      :default => "", :null => false
    t.string   "subtitle"
    t.string   "timezone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.integer  "account_id"
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "roles"
  end

end
