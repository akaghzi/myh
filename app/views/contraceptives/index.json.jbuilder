json.array!(@contraceptives) do |contraceptive|
  json.extract! contraceptive, :name
  json.url contraceptive_url(contraceptive, format: :json)
end