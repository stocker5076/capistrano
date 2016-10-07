class AddFakeToMovie < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :fake, :string
  end
end
