class MedicalHistory < ActiveRecord::Base
  belongs_to :patient
  validates :disease, uniqueness: {scope: [:patient, :self_or_family], message: "can appear once for patient or the family member"}
end
