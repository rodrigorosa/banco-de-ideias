class Projeto < ActiveRecord::Base
	belongs_to :user
	has_many :comentarios

	scope :mais_recentes, -> { order('created_at DESC') }

  def self.mais_votados
  	Projeto.sort {|a,b| a.comentarios.sum(:votos) <=> b.comentarios.sum(:votos) }
  end
end