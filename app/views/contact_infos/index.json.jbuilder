json.array!(@contact_infos) do |contact_info|
  json.extract! contact_info, :patient_id, :email, :alternate_phone, :address_line1, :address_line2, :city, :province, :country, :postal_code, :emergency_contact_name, :emergency_contact_relationship, :emergency_contact_phone
  json.url contact_info_url(contact_info, format: :json)
end