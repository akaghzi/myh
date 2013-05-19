json.array!(@vital_signs) do |vital_sign|
  json.extract! vital_sign, :patient_id, :visit_id, :temperature, :heart_rate, :bp_systolic, :bp_diastolic, :respiratory_rate, :weight
  json.url vital_sign_url(vital_sign, format: :json)
end