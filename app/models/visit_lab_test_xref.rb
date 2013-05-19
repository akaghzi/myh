class VisitLabTestXref < ActiveRecord::Base
  belongs_to :visit
  belongs_to :lab_test
end