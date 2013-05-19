class LabTest < ActiveRecord::Base
  has_many :visit_lab_test_xrefs
  has_many :visits, through: :visit_lab_test_xrefs

end
