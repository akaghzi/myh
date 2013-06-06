class VisitLabTestXref < ActiveRecord::Base
  belongs_to :visit
  belongs_to :lab_test
  validates :lab_test_id, uniqueness: {scope: :visit_id}
  validates :received_at, presence: true, if: :reviewed_at
  scope :ordered, -> {where("received_at is null")}
  scope :received, -> {where("received_at is not null and reviewed_at is null")}
  scope :reviewed, -> {where("reviewed_at is not null")}
  
end