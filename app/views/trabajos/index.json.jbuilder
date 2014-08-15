json.array!(@trabajos) do |trabajo|
  json.extract! trabajo, :id, :cliente_id, :descripcion, :tipo_trabajo_id, :fecha, :valor
  json.url cliente_trabajos_url(trabajo, format: :json)
end
