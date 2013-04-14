json.array!(@patients) do |patient|
  json.extract! patient, :first_name, :middle_name, :last_name, :date_of_birth, :sex, :phone
  json.url patient_url(patient, format: :json)
end