class RemoveFakeFromMovie < ActiveRecord::Migration[5.0]
  def change
    remove_column :movies, :fake, :string
  end
end
