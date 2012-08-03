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

ActiveRecord::Schema.define(:version => 20120803185211) do

  create_table "a_us", :force => true do |t|
    t.date     "fecha_inicio"
    t.date     "fecha_termino"
    t.string   "estado"
    t.text     "observacion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "actividad_id"
  end

  create_table "actividads", :force => true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cargos", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cheques", :force => true do |t|
    t.date     "fecha"
    t.string   "numero"
    t.string   "banco"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "forma_pago_id"
  end

  create_table "clientes", :force => true do |t|
    t.string   "rut"
    t.string   "nombre"
    t.string   "direccion"
    t.string   "ciudad"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type"
  end

  create_table "efectivos", :force => true do |t|
    t.integer  "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "forma_pago_id"
  end

  create_table "em_is", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "item_id"
    t.integer  "entrada_material_id"
  end

  create_table "entrada_materials", :force => true do |t|
    t.date     "fecha"
    t.integer  "numorden"
    t.integer  "num_factura"
    t.integer  "num_guia"
    t.string   "obsevaciones"
    t.boolean  "vb_jefe_depto"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "orden_de_compra_id"
    t.integer  "user_id"
    t.integer  "orden_de_trabajo_id"
  end

  create_table "forma_pagos", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fp_odcs", :force => true do |t|
    t.date     "fecha"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "forma_pago_id"
    t.integer  "orden_de_compra_id"
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

  create_table "i_cs", :force => true do |t|
    t.integer  "cliente_id"
    t.integer  "item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "i_sms", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "salida_material_id"
    t.integer  "item_id"
  end

  create_table "ii_as", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "instancia_item_id"
    t.integer  "actividad_id"
  end

  create_table "ii_is", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "instancia_item_id"
    t.integer  "inventario_id"
  end

  create_table "instancia_items", :force => true do |t|
    t.integer  "corr"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "item_id"
  end

  create_table "inventarios", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "item_tipo_items", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "item_id"
    t.integer  "tipo_item_id"
  end

  create_table "items", :force => true do |t|
    t.string   "nombre"
    t.string   "marca"
    t.float    "medida"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "seccion_id"
    t.integer  "unidad_id"
    t.integer  "proveedor_id"
    t.string   "estado"
  end

  create_table "modelos", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tipo_item_id"
  end

  create_table "odc_is", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "orden_de_compra_id"
    t.integer  "item_id"
  end

  create_table "odc_rs", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "orden_de_compra_id"
    t.integer  "requisicion_id"
  end

  create_table "orden_de_compras", :force => true do |t|
    t.date     "fecha"
    t.integer  "neto"
    t.integer  "total"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "proveedor_id"
  end

  create_table "orden_de_trabajos", :force => true do |t|
    t.string   "descripcion"
    t.date     "fecha_recepcion"
    t.integer  "num_oc_cliente"
    t.integer  "cliente_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personas", :force => true do |t|
    t.string   "rut"
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "proveedor_id"
    t.integer  "cargo_id"
    t.string   "apat"
    t.string   "amat"
  end

  create_table "proveedors", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "empresa_id"
    t.string   "rut"
    t.string   "nombre"
    t.string   "ciudad"
    t.string   "direccion"
    t.string   "pais"
  end

  create_table "r_is", :force => true do |t|
    t.integer  "cantidad"
    t.string   "prioridad"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "item_id"
    t.integer  "requisicion_id"
  end

  create_table "requisicions", :force => true do |t|
    t.date     "fecha"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "orden_de_trabajo_id"
    t.integer  "user_id"
  end

  create_table "salida_materials", :force => true do |t|
    t.date     "fecha"
    t.date     "observacion"
    t.integer  "usuario_id_s"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "orden_de_trabajo_id"
    t.integer  "usuario_id_d"
  end

  create_table "seccions", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nombre"
  end

  create_table "telefono_clientes", :force => true do |t|
    t.string   "nombre"
    t.string   "fono"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "empresa_id"
  end

  create_table "telefono_personas", :force => true do |t|
    t.string   "nombre"
    t.string   "telefono"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "persona_id"
  end

  create_table "telefono_proveedors", :force => true do |t|
    t.string   "nombre"
    t.string   "fono"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "proveedor_id"
  end

  create_table "tipo_items", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unidads", :force => true do |t|
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
    t.integer  "persona_id"
  end

end
