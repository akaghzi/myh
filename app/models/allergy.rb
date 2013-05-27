class Allergy < ActiveRecord::Base
  belongs_to :patient
  validates :substance_name, :substance_type, :reaction, presence: true
  validates :substance_type, inclusion: {in: VALID_SUBSTANCETYPE }
  validates :substance_name, uniqueness: {scope: :patient, message: "allergen can appear once for a patient", case_sensitive: false}
  before_save { |allergy| allergy.substance_name = substance_name.downcase }
end
