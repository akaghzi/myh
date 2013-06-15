class Visit < ActiveRecord::Base
  belongs_to :patient
  belongs_to :appointment
  has_many :vital_signs
  has_many :visit_lab_test_xrefs
  has_many :lab_tests, through: :visit_lab_test_xrefs
  validates :patient_id, :appointment_id,:visited_at, :visit_reason, presence: true
  validates :appointment_id, uniqueness: true
end