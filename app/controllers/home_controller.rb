class HomeController < ApplicationController
  def index
  	@projetos_mais_votados = Projeto.mais_votados
  	@projetos_mais_recentes = Projeto.mais_recentes
  end
end
