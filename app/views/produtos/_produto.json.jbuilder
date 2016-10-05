json.extract! produto, :id, :tipo, :preco, :nome, :descricao, :created_at, :updated_at
json.url produto_url(produto, format: :json)