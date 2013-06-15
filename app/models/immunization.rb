class Immunization < ActiveRecord::Base
  belongs_to :patient
  belongs_to :vaccine
  validates :immunization_year, :vaccine_id, presence: true
  validates :vaccine_id, uniqueness: {scope: :patient, message: "immunization_for can appear once for a patient"}
  validate :check_date
  def check_date
      self.errors.add(:immunization_year, "is invalid") if immunization_year > Date.today.year 
  end
  
end
