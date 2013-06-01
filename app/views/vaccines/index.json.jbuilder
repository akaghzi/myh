json.array!(@vaccines) do |vaccine|
  json.extract! vaccine, :name
  json.url vaccine_url(vaccine, format: :json)
end