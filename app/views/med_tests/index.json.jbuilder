json.array!(@med_tests) do |med_test|
  json.extract! med_test, :patient_id, :visit_id, :med_test_type_id, :measurement, :mearsurement_note, :ordered_at, :reviewed_at
  json.url med_test_url(med_test, format: :json)
end