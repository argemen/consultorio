json.array!(@citas) do |cita|
  json.extract! cita, :id, :paciente_id, :especialista_id, :fecha
  json.url cita_url(cita, format: :json)
end
