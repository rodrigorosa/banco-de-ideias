class CreateVotos < ActiveRecord::Migration
  def change
    create_table :votos do |t|
      t.integer :pontos
      t.references :projeto, index: true
      t.references :user, index: true

      t.index [:user_id, :projeto_id], unique: true

      t.timestamps
    end
  end
end
