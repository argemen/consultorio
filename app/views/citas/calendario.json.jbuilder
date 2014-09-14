json.array!(@citas) do |cita|
  json.extract! cita, :id, :paciente_id, :especialista_id, :fecha
  json.url calendario_url(cita, format: :json)
  json.start cita.fecha
  
end
