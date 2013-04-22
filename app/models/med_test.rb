class MedTest < ActiveRecord::Base
  validates :patient_id, :visit_id, :med_test_type, :ordered_at, presence: true
  # validates :ordered_at is not in future
  belongs_to :patient
  belongs_to :visit
  belongs_to :med_test_type
end
