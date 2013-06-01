json.array!(@diseases) do |disease|
  json.extract! disease, :name
  json.url disease_url(disease, format: :json)
end