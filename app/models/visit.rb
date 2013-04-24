class Visit < ActiveRecord::Base
  belongs_to :patient
  has_many :med_tests
  validates :patient_id, :visit_date, :visit_reason, presence: true
  accepts_nested_attributes_for :med_tests
  after_create :add_med_tests
  private
  def add_med_tests
    # patient = Patient.find(visit.patient_id)
    med_test_types = MedTestType.where("minimum_age <= ?", self.patient.age)
    med_test_types.each do | med_test_type |
      self.med_tests.create(patient_id: self.patient_id, visit_id: self.id, med_test_type_id: med_test_type.id)
    end
  end
end
