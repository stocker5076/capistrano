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

ActiveRecord::Schema.define(version: 20160818085947) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alumnos", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "edad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "curso_id"
    t.index ["curso_id"], name: "index_alumnos_on_curso_id", using: :btree
  end

  create_table "cumpleanios", force: :cascade do |t|
    t.date     "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "nombre"
  end

  create_table "cursos", force: :cascade do |t|
    t.string   "nombre"
    t.date     "fecha"
    t.float    "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "salon_id"
    t.index ["salon_id"], name: "index_cursos_on_salon_id", using: :btree
  end

  create_table "lists", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_lists_on_user_id", using: :btree
  end

  create_table "movie_tags", force: :cascade do |t|
    t.integer  "movie_id"
    t.integer  "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_movie_tags_on_movie_id", using: :btree
    t.index ["tag_id"], name: "index_movie_tags_on_tag_id", using: :btree
  end

  create_table "movies", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "salons", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tareas", force: :cascade do |t|
    t.string   "titulo"
    t.integer  "duracion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "lugar"
  end

  create_table "tasks", force: :cascade do |t|
    t.string   "title"
    t.text     "note"
    t.boolean  "completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "list_id"
    t.index ["list_id"], name: "index_tasks_on_list_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "username"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "alumnos", "cursos"
  add_foreign_key "cursos", "salons"
  add_foreign_key "lists", "users"
  add_foreign_key "movie_tags", "movies"
  add_foreign_key "movie_tags", "tags"
  add_foreign_key "tasks", "lists"
end
