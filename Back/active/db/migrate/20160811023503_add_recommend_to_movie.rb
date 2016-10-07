class AddRecommendToMovie < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :recommend, :boolean
  end
end
