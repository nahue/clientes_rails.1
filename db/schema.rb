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

ActiveRecord::Schema.define(version: 20140829184020) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientes", force: true do |t|
    t.integer  "user_id"
    t.string   "nombre"
    t.string   "apellido"
    t.string   "email"
    t.text     "otros_datos"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "empresa"
    t.string   "telefono"
  end

  add_index "clientes", ["user_id"], name: "index_clientes_on_user_id", using: :btree

  create_table "preferencias", force: true do |t|
    t.boolean  "notificar_cliente"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "titulo"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  add_index "preferencias", ["user_id"], name: "index_preferencias_on_user_id", using: :btree

  create_table "tipo_trabajos", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trabajos", force: true do |t|
    t.integer  "cliente_id"
    t.text     "descripcion"
    t.integer  "tipo_trabajo_id"
    t.datetime "fecha"
    t.decimal  "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "confirmation_token"
    t.boolean  "confirmed"
  end

  add_index "trabajos", ["cliente_id"], name: "index_trabajos_on_cliente_id", using: :btree
  add_index "trabajos", ["tipo_trabajo_id"], name: "index_trabajos_on_tipo_trabajo_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "full_name"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
