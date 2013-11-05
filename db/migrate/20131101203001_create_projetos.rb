class CreateProjetos < ActiveRecord::Migration
  def change
    create_table :projetos do |t|
      t.string :titulo
      t.text :descricao

      t.timestamps
    end
  end
end
