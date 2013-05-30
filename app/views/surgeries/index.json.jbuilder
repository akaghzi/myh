json.array!(@surgeries) do |surgery|
  json.extract! surgery, :surgery_type, :surgery_date
  json.url surgery_url(surgery, format: :json)
end