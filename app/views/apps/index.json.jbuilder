json.array!(@apps) do |app|
  json.extract! app, :id, :nombre, :direccion, :email, :telefono
  json.url app_url(app, format: :json)
end
