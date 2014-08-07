json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :user_id, :nombre, :apellido, :email, :otros_datos
  json.url cliente_url(cliente, format: :json)
end
