json.extract! client, :id, :name, :email, :tel, :message, :created_at, :updated_at
json.url client_url(client, format: :json)