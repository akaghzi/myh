class CurrentMedication < ActiveRecord::Base
  belongs_to :patient
  belongs_to :medication_route
  belongs_to :medication_frequency
  validates :name, :dosage, :medication_frequency_id, :medication_route_id, presence: true
  validates :name, uniqueness: {scope: :patient, message: "medication can appear once for a patient", case_sensitive: false}
  before_save { |current_medication| current_medication.name = self.name.downcase }
end
