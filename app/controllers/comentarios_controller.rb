class ComentariosController < ApplicationController
	before_action :authenticate_user!, only: [:create, :destroy]

	def create
		@comentario = projeto.comentarios.build(comentarios_params)

    if @comentario.save
      redirect_to projeto, notice: 'Comentário adicionado com sucesso.' 
    else
      redirect_to projeto, :flash => { :error => "Erro ao adicionar comentário, bitch" }
    end
	end

	def destroy
		@comentario = Comentario.find(params[:id])
		@comentario.destroy
		redirect_to @comentario.projeto
	end

	private

	def projeto
		@projeto ||= current_user.projetos.find(params[:projeto_id])
	end

	def comentarios_params
		params.require(:comentario).permit(:pontos, :comentario)
	end
end