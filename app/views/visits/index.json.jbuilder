json.array!(@visits) do |visit|
  json.extract! visit, :patient_id, :visit_date, :visit_reason
  json.url visit_url(visit, format: :json)
end