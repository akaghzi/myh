class LabTest < ActiveRecord::Base
  validates :full_name, :short_name, presence: true
  validates :full_name, :short_name, uniqueness: {case_sensitive: false}
  has_many :visit_lab_test_xrefs
  has_many :visits, through: :visit_lab_test_xrefs
end
