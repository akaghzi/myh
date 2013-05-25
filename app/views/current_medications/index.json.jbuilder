json.array!(@current_medications) do |current_medication|
  json.extract! current_medication, :patient_id, :name, :dosage, :frequency
  json.url current_medication_url(current_medication, format: :json)
end