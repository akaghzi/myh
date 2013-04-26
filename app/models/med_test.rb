class MedTest < ActiveRecord::Base
  validates :patient_id, :visit_id, :med_test_type, presence: true
  validates :med_test_type, uniqueness: {scope: :visit_id, message: "test should be run once per visit"}
  # validates :ordered_at is not in future
  belongs_to :patient
  belongs_to :visit
  belongs_to :med_test_type
  def med_test_type_short_name
    "#{med_test_type.short_name}"
  end
  
end
