class Immunization < ActiveRecord::Base
  belongs_to :patient
  validates :immunization_for, presence: true,
						uniqueness: {scope: :patient, message: "immunization_for can appear once for a patient", 
												case_sensitive: false}
  
end
