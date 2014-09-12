json.array!(@especialista) do |especialista|
  json.extract! especialista, :id, :especialidad_id, :cedula, :nombres, :apellidos, :email, :telefono
  json.url especialista_url(especialista, format: :json)
end
