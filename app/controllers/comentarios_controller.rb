class ComentariosController < ApplicationController
	before_action :authenticate_user!, only: [:create, :destroy]

	def create
		@comentario = projeto.comentarios.build(comentarios_params)

    if @comentario.save
      redirect_to projeto, notice: 'Comentário adicionado com sucesso.' 
    else
      render :template => "projetos/show", notice: "Erro ao adicionar comentário"
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