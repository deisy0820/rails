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

ActiveRecord::Schema.define(version: 20160719050055) do

  create_table "bills", force: :cascade do |t|
    t.string   "id_factura"
    t.string   "nombre_completo"
    t.string   "direccion"
    t.string   "ciudad"
    t.integer  "cantidad"
    t.string   "detalle_factura"
    t.string   "cod_venta"
    t.string   "vendedor"
    t.float    "precio_unitario"
    t.float    "precio_total"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.float    "descuento"
    t.float    "iva"
  end

end
