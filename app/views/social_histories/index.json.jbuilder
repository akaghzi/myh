json.array!(@social_histories) do |social_history|
  json.extract! social_history, :patient, :smoking, :smoking_quantity, :drinking, :drinking_quantity, :physical_excercise, :excercise_per_day, :substance_abuse, :substance_type, :profession, :pet, :living_with_family, :marital_status
  json.url social_history_url(social_history, format: :json)
end