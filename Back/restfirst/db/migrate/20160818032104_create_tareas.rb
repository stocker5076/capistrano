class CreateTareas < ActiveRecord::Migration[5.0]
  def change
    create_table :tareas do |t|
      t.string :titulo
      t.integer :duracion

      t.timestamps
    end
  end
end
