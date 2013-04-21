json.array!(@med_test_types) do |med_test_type|
  json.extract! med_test_type, :full_name, :short_name, :unit_of_measure, :lab_type, :essential, :minimum_threshold, :maximum_threshold
  json.url med_test_type_url(med_test_type, format: :json)
end