json.array!(@citas) do |cita|
  json.extract! cita, :id, :paciente_id, :especialista_id, :fecha, :paciente_info, :especialista_info
  json.url calendario_url(cita, format: :json)
  json.start cita.fecha
  json.url cita_url(cita)
end
