json.array!(@immunizations) do |immunization|
  json.extract! immunization, :patient_id, :tetanus, :tetanus_year, :pertussis, :pertussis_year, :varicella, :varicella_year, :pheumonia, :pneumonia_year, :influenza, :influenza_year, :hepatitis_a, :hepatitis_a_year, :hepatitis_b, :hepatitis_b_year, :mmr, :mmr_year, :meningitis, :meningitis_year, :zostavax, :zotavax_year, :hpv, :hpv_year, :smallpox, :smallpox_year, :tuberclossis, :tuberclossis_year, :polio, :polio_year
  json.url immunization_url(immunization, format: :json)
end