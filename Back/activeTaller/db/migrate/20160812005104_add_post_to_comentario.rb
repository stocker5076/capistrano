class AddPostToComentario < ActiveRecord::Migration[5.0]
  def change
    add_reference :comentarios, :post, foreign_key: true
  end
end
