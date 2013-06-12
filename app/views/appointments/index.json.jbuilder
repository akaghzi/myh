json.array!(@appointments) do |appointment|
  json.extract! appointment, :user_id, :patient_id, :appointment_time, :appointment_type
  json.url appointment_url(appointment, format: :json)
end