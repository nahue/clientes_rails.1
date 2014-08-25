json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :user_id, :nombre, :apellido, :email, :otros_datos
  json.url api_v1_cliente_url(cliente, format: :json)
  json.url_trabajos api_v1_cliente_trabajos_url(cliente)
end
