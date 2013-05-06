class Visit < ActiveRecord::Base
  belongs_to :patient
  has_many :med_tests
  validates :patient_id, :visit_date, :visit_reason, presence: true
  accepts_nested_attributes_for :med_tests
  after_create :add_med_tests
  private
  def add_med_tests
    # find all relevant med_test_types
    med_test_types = MedTestType.where("lab_type='inhouse' AND minimum_age <= ?", patient.age)
    # prepare med_tests for patient visit
    med_test_types.sort.each do | med_test_type |
      med_tests.create(patient_id: patient_id, visit_id: id, med_test_type_id: med_test_type.id)
    end
  end 
end