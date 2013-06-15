class Immunization < ActiveRecord::Base
  belongs_to :patient
  validate :immunization_year, :vaccine_id, presence: true
  validates :vaccine_id, uniqueness: {scope: :patient, message: "immunization_for can appear once for a patient"}
  
end
