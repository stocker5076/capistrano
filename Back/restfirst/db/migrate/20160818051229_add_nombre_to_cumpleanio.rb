class AddNombreToCumpleanio < ActiveRecord::Migration[5.0]
  def change
    add_column :cumpleanios, :nombre, :string
  end
end
