json.array!(@citas) do |cita|
  json.extract! cita, :id, :paciente_id, :especialista_id, :fecha, :paciente_info
  json.url calendario_url(cita, format: :json)
  json.start cita.fecha
  json.url ver_citas_url(cita, format: :html)
end
