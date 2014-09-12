json.array!(@especialidades) do |especialidad|
  json.extract! especialidad, :id, :nombre
  json.url especialidad_url(especialidad, format: :json)
end
