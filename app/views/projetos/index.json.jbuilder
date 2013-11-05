json.array!(@projetos) do |projeto|
  json.extract! projeto, :titulo, :descricao
  json.url projeto_url(projeto, format: :json)
end
