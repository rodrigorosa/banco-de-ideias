class Comentario < ActiveRecord::Base
	POINTS = (1..5).to_a
  belongs_to :projeto

	validates_inclusion_of :pontos, in: POINTS

  def self.stars
  	(average(:pontos) || 0).round
  end	  
end