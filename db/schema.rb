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

ActiveRecord::Schema.define(:version => 20120710180601) do

  create_table "cargos", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "documentos", :force => true do |t|
    t.string   "nombre"
    t.string   "codigo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "herramienta", :force => true do |t|
    t.string   "codigo"
    t.string   "nombre"
    t.string   "codSeccion"
    t.string   "medida"
    t.string   "stock"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "homes", :force => true do |t|
    t.string   "up_titulo"
    t.text     "up_cont"
    t.string   "med_titulo"
    t.string   "meduno_titulo"
    t.text     "meduno_cont"
    t.string   "meddos_titulo"
    t.text     "meddos_cont"
    t.string   "medtres_titulo"
    t.text     "medtres_cont"
    t.string   "down_titulo"
    t.string   "downuno_titulo"
    t.text     "downuno_cont"
    t.string   "downdos_titulo"
    t.text     "downdos_cont"
    t.string   "downtres_titulo"
    t.text     "downtres_cont"
    t.string   "downcuatro_titulo"
    t.text     "downcuatro_cont"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "item_tipo_items", :force => true do |t|
    t.string   "item_codigo"
    t.string   "tipoItem_codigo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.string   "codigo"
    t.string   "nombre"
    t.string   "marca"
    t.float    "medida"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "seccion_id"
    t.integer  "unidad_id"
    t.integer  "proveedor_id"
    t.integer  "documento_id"
  end

  create_table "modelos", :force => true do |t|
    t.string   "codigo"
    t.string   "nombre"
    t.string   "tipoItem_codigo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personas", :force => true do |t|
    t.string   "rut"
    t.string   "nombre"
    t.string   "user"
    t.string   "pass"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "proveedors", :force => true do |t|
    t.string   "codigo"
    t.string   "nombre"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "ciudad"
    t.string   "pais"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "seccions", :force => true do |t|
    t.string   "codigo"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_items", :force => true do |t|
    t.string   "codigo"
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unidads", :force => true do |t|
    t.string   "codigo"
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_sessions", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cargo_nombre"
  end

end
