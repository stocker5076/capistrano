class AddOmniauthColumnsToPerro < ActiveRecord::Migration[5.0]
  def change
    add_column :perros, :uid, :string
    add_column :perros, :provider, :string
    add_column :perros, :name, :string
  end
end
