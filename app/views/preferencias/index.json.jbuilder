json.array!(@preferencias) do |preferencia|
  json.extract! preferencia, :id, :notificar_cliente, :user_id
  json.url preferencia_url(preferencia, format: :json)
end
