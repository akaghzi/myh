json.array!(@allergies) do |allergy|
  json.extract! allergy, :patient_id, :name, :type, :reaction
  json.url allergy_url(allergy, format: :json)
end