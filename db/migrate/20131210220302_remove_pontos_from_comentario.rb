class RemovePontosFromComentario < ActiveRecord::Migration
  def up
  	remove_column :comentarios, :pontos
  end

  def down
  	add_column :comentarios, :pontos, :integer
  end
end
