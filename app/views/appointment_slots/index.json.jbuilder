json.array!(@appointment_slots) do |appointment_slot|
  json.extract! appointment_slot, :name
  json.url appointment_slot_url(appointment_slot, format: :json)
end