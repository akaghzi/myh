json.array!(@menstrual_histories) do |menstrual_history|
  json.extract! menstrual_history, :patient_id, :onset_age, :normal_first_day_of_last_period, :period_interval, :problems_with_period, :past_problems_with_period
  json.url menstrual_history_url(menstrual_history, format: :json)
end