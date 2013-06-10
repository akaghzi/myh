json.array!(@gynecology_histories) do |gynecology_history|
  json.extract! gynecology_history, :patient_id, :problem_type, :problem_date, :followup
  json.url gynecology_history_url(gynecology_history, format: :json)
end