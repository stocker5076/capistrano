class CreateComentarios < ActiveRecord::Migration[5.0]
  def change
    create_table :comentarios do |t|
      t.string :cita

      t.timestamps
    end
  end
end
