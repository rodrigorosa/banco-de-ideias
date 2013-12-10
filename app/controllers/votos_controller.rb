class VotosController < ApplicationController
	before_action :authenticate_user!

  def create
  	voto = projeto.votos.find_or_initialize_by(user_id: current_user.id)
  	voto.update!(voto_params)
  	head :ok
  end

  def update
  	create
  end

  def projeto
  	@projeto ||= Projeto.find(params[:projeto_id])
  end

  def voto_params
  	params.require(:voto).permit(:pontos)
  end
end
