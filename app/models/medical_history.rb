class MedicalHistory < ActiveRecord::Base
  belongs_to :patient
  belongs_to :relationship
  belongs_to :disease
  validates :disease_id, uniqueness: {scope: [:patient, :relationship], message: "can appear once for patient or the family member"}
  scope :self_history, -> {where(relationship_id: 1)}
  scope :family_history, lambda {where("relationship_id <> ?", 1)}
  validate :check_date
  def check_date
    self.errors.add(:diagnosed_at, "is invalid") if self.diagnosed_at > Date.today
  end
end
