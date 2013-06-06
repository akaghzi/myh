class CurrentMedication < ActiveRecord::Base
  belongs_to :patient
  validates :name, :dosage, :frequency, presence: true
  validates :name, uniqueness: {scope: :patient, message: "medication can appear once for a patient", case_sensitive: false}
  before_save { |current_medication| current_medication.name = name.downcase }
  before_save { |current_medication| current_medication.route = route.downcase }
  
end
