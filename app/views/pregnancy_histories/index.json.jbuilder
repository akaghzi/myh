json.array!(@pregnancy_histories) do |pregnancy_history|
  json.extract! pregnancy_history, :patient_id, :full_term_births, :preterm_births, :spont_miscarriages, :elective_abortions, :living_children
  json.url pregnancy_history_url(pregnancy_history, format: :json)
end