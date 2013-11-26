class Projeto < ActiveRecord::Base
	belongs_to :user
	has_many :comentarios

	scope :most_recent, -> { order('created_at DESC') }
end