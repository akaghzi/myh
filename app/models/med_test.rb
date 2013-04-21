class MedTest < ActiveRecord::Base
  belongs_to :patient
  belongs_to :visit
  belongs_to :med_test_type
end
