json.array!(@medication_routes) do |medication_route|
  json.extract! medication_route, :name
  json.url medication_route_url(medication_route, format: :json)
end