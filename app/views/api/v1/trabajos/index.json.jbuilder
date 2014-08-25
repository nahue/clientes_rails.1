json.array!(@trabajos) do |trabajo|
  json.extract! trabajo, :id, :cliente_id, :descripcion, :tipo_trabajo_id, :fecha, :valor
  json.url api_v1_cliente_trabajos_url(trabajo.cliente, format: :json)
  json.cliente api_v1_cliente_url(trabajo.cliente, format: :json)
end
