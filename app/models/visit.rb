class Visit < ActiveRecord::Base
  belongs_to :patient
  has_many :vital_signs
  has_many :visit_lab_test_xrefs
  has_many :lab_tests, through: :visit_lab_test_xrefs
  validates :patient_id, :visit_date, :visit_reason, presence: true
  accepts_nested_attributes_for :vital_signs
end