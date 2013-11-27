class Projeto < ActiveRecord::Base
	belongs_to :user
	has_many :comentarios

	scope :mais_recentes, -> { order('created_at DESC') }
  scope :mais_votados, -> {order()}
end