json.array!(@medication_frequencies) do |medication_frequency|
  json.extract! medication_frequency, :name
  json.url medication_frequency_url(medication_frequency, format: :json)
end