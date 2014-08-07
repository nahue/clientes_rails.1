json.array!(@tipo_trabajos) do |tipo_trabajo|
  json.extract! tipo_trabajo, :id, :nombre
  json.url tipo_trabajo_url(tipo_trabajo, format: :json)
end
