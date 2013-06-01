json.array!(@medical_histories) do |medical_history|
  json.extract! medical_history, :patient_id, :disease, :diagnosed_at, :cured_at, :self_or_family
  json.url medical_history_url(medical_history, format: :json)
end