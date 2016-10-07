json.extract! tarea, :id, :titulo, :duracion, :created_at, :updated_at
json.url tarea_url(tarea, format: :json)