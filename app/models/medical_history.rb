class MedicalHistory < ActiveRecord::Base
  belongs_to :patient
  validates :disease_id, uniqueness: {scope: [:patient, :relationship], message: "can appear once for patient or the family member"}
  scope :self_history, -> {where(relationship_id: 1)}
  scope :family_history, lambda {where("relationship_id <> ?", 1)}
end
