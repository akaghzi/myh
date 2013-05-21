json.array!(@insurance_infos) do |insurance_info|
  json.extract! insurance_info, :patient_id, :insurance_carrier, :insurance_member_id, :insurance_guarantor, :insurance_guarantor_relationship
  json.url insurance_info_url(insurance_info, format: :json)
end