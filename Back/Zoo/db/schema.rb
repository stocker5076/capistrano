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

ActiveRecord::Schema.define(version: 20160812040810) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "calzado", primary_key: "id_calzado", id: :string, force: :cascade do |t|
    t.string "tipo"
    t.string "marca"
  end

  create_table "comentarios", force: :cascade do |t|
    t.text     "contenido"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deporte", primary_key: "id_deporte", id: :string, force: :cascade do |t|
    t.string "nombre"
  end

  create_table "equipo", primary_key: "id_equipo", id: :integer, force: :cascade do |t|
    t.string "nombre", limit: 60
  end

  create_table "evento", primary_key: "id_evento", id: :integer, force: :cascade do |t|
    t.string "nombre_evento"
    t.string "id_calzado"
    t.string "id_deporte"
  end

  create_table "fichaje", primary_key: "id_fichaje", id: :integer, force: :cascade do |t|
    t.integer "id_equipo"
    t.integer "id_jugador"
  end

  create_table "jugador", primary_key: "id_jugador", id: :integer, force: :cascade do |t|
    t.string "nombre", limit: 120
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "usuario_id"
    t.index ["usuario_id"], name: "index_posts_on_usuario_id", using: :btree
  end

  create_table "test", id: false, force: :cascade do |t|
    t.string  "username"
    t.integer "age"
  end

  create_table "users", force: :cascade do |t|
    t.string   "nombre"
    t.string   "email"
    t.integer  "edad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "evento", "calzado", column: "id_calzado", primary_key: "id_calzado", name: "evento_id_calzado_fkey"
  add_foreign_key "evento", "deporte", column: "id_deporte", primary_key: "id_deporte", name: "evento_id_deporte_fkey"
  add_foreign_key "fichaje", "equipo", column: "id_equipo", primary_key: "id_equipo", name: "fichaje_id_equipo_fkey"
  add_foreign_key "fichaje", "jugador", column: "id_jugador", primary_key: "id_jugador", name: "fichaje_id_jugador_fkey"
  add_foreign_key "posts", "usuarios"
end
