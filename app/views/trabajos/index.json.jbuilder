json.array!(@trabajos) do |trabajo|
  json.extract! trabajo, :id, :cliente_id, :descripcion, :tipo_trabajo_id, :fecha, :valor
  json.url trabajo_url(trabajo, format: :json)
end
