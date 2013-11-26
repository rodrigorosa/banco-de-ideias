class Comentarios < ApplicationController
	before_action :authenticate_user! only[:new, :edit, :create, :update, :destroy]

	def new
		@comentario = projeto.comentarios.build
	end

	def create
		@comentario = projeto.comentarios.build(comentarios_params)
		@comentario.save
		redirect_to @comentario.projeto
	end

	def destroy
		@comentario = projeto.comentarios.find(params[:id])
		@comentario.destroy
		redirect_to @comentario.proejto
	end

	private

	def projeto
		@projeto ||= current_user.projetos.find(params[:projeto_id])
	end

	def comentarios_params
		params.require(:comentario).permit(:pontos, :comentario)
	end
end