class VisitLabTestXref < ActiveRecord::Base
  belongs_to :visit
  belongs_to :lab_test
  validates :lab_test_id, uniqueness: {scope: :visit_id}
end