class Projeto < ActiveRecord::Base
	belongs_to :user
	has_many :comentarios, dependent: :destroy
	has_many :votos, dependent: :destroy

	scope :mais_recentes, -> { order('created_at DESC') }

  def self.mais_votados
  	Projeto.all.sort! {|a,b| a.votos.sum(:pontos) <=> b.votos.sum(:pontos) }
  end
end