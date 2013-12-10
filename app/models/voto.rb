class Voto < ActiveRecord::Base
	POINTS = (1..5).to_a
  belongs_to :projeto
  belongs_to :user

  validates_inclusion_of :pontos, in: POINTS
  validates_presence_of :pontos, :user_id, :projeto_id
  validates_uniqueness_of :user_id, scope: :projeto_id

  def self.stars
  	(average(:pontos) || 0).round
  end	  
end