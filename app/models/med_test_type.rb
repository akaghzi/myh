class MedTestType < ActiveRecord::Base
  has_many :med_tests
  validates :full_name, :short_name, :unit_of_measure, 
            :lab_type, :minimum_threshold, :maximum_threshold, presence: true
  validates :lab_type, inclusion: {in: VALID_LABTYPE}
end
