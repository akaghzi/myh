json.array!(@hospitalizations) do |hospitalization|
  json.extract! hospitalization, :patient_id, :hospitalization_reason, :hospitalization_date, :hospitalization_duration, :hospitalization_note
  json.url hospitalization_url(hospitalization, format: :json)
end