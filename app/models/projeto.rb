class Projeto < ActiveRecord::Base
	belongs_to :user
	has_many :comentarios

	scope :mais_recentes, -> { order('created_at DESC') }

  def self.mais_votados
  	Projeto.all.sort! {|a,b| a.comentarios.sum(:pontos) <=> b.comentarios.sum(:pontos) }
  end
end