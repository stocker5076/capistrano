class CreateCumpleanios < ActiveRecord::Migration[5.0]
  def change
    create_table :cumpleanios do |t|
      t.date :fecha

      t.timestamps
    end
  end
end
