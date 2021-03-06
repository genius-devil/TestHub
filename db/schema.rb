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

ActiveRecord::Schema.define(version: 20130708160445) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "access_tokens", force: true do |t|
    t.binary   "token"
    t.binary   "refresh_token"
    t.datetime "expires_at"
    t.string   "options"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "token_digest",  limit: 40
  end

  create_table "bundles", force: true do |t|
    t.integer  "github_id"
    t.integer  "release_id"
    t.integer  "repository_id"
    t.string   "url"
    t.string   "minimum_os_version"
    t.string   "bundle_display_name"
    t.string   "bundle_version"
    t.string   "github_etag"
    t.string   "bundle_identifier"
    t.boolean  "enterprise"
    t.boolean  "ipad_only"
    t.boolean  "armv6"
    t.boolean  "armv7"
    t.boolean  "armv7s"
    t.string   "fatal_errors",        array: true
    t.string   "md5",                 array: true
    t.string   "capabilities"
    t.datetime "expiration_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "collaborators", force: true do |t|
    t.integer "user_id"
    t.integer "repository_id"
  end

  create_table "devices", force: true do |t|
    t.string   "udid",               limit: 40
    t.string   "product"
    t.string   "version"
    t.string   "secret_digest"
    t.string   "certificate_serial"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "serial"
  end

  create_table "provisioned_devices", force: true do |t|
    t.integer  "bundle_id"
    t.integer  "device_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "releases", force: true do |t|
    t.integer  "github_id"
    t.integer  "repository_id"
    t.string   "body"
    t.string   "github_etag"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "tag_name"
    t.string   "name"
    t.boolean  "prerelease",    default: false, null: false
  end

  create_table "repositories", force: true do |t|
    t.integer  "github_id"
    t.integer  "owner_id"
    t.string   "github_etag"
    t.string   "name"
    t.string   "full_name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_sessions", force: true do |t|
    t.integer  "user_id"
    t.integer  "access_token_id"
    t.string   "secret_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.integer  "github_id"
    t.string   "github_login"
    t.string   "name"
    t.string   "email"
    t.string   "avatar_url"
    t.string   "github_etag"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
