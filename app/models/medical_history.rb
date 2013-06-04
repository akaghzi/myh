class MedicalHistory < ActiveRecord::Base
  belongs_to :patient
  validates :disease, uniqueness: {scope: [:patient, :self_or_family], message: "can appear once for patient or the family member"}
  scope :self_history, -> {where(self_or_family: 'self')}
  scope :family_history, -> {where(self_or_family: "brother|sister|mother|father")}
end