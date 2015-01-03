json.array!(@cochons) do |cochon|
  json.extract! cochon, :id, :name, :age, :kg, :description
  json.url cochon_url(cochon, format: :json)
end
