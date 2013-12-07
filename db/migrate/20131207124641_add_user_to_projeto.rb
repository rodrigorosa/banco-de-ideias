class AddUserToProjeto < ActiveRecord::Migration
  def change
    add_reference :projetos, :user, index: true
  end
end
