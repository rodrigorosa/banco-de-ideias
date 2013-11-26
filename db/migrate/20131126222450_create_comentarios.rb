class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.references :projeto, index: true
      t.integer :pontos
      t.text :comentario

      t.timestamps
    end
  end
end
