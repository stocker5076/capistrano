class AddLugarToTarea < ActiveRecord::Migration[5.0]
  def change
    add_column :tareas, :lugar, :string
  end
end
