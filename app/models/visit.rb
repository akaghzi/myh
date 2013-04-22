class Visit < ActiveRecord::Base
  belongs_to :patient
  has_many :med_tests
  validates :patient_id, :visit_date, :visit_reason, presence: true
  accepts_nested_attributes_for :med_tests
end
