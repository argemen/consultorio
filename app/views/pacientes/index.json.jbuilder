json.array!(@pacientes) do |paciente|
  json.extract! paciente, :id, :cedula, :nombres, :apellidos, :direccion, :telefono, :email
  json.url paciente_url(paciente, format: :json)
end
