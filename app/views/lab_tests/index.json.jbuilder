json.array!(@lab_tests) do |lab_test|
  json.extract! lab_test, :full_name, :short_name, :unit_of_measure, :low_threshold, :high_threshold
  json.url lab_test_url(lab_test, format: :json)
end