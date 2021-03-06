class VisitLabTestXref < ActiveRecord::Base
  belongs_to :visit
  belongs_to :lab_test
  validates :lab_test_id, uniqueness: {scope: :visit_id}
  validates :conducted_at, presence: true, if: "received_at?"
  validates :received_at, presence: true, if: "reviewed_at?"
  validates :lab_note, presence: true, if: "received_at?"
  validate :check_received_date, if: "received_at?"
  validate :check_reviewed_date, if: "reviewed_at?"
  validate :check_conducted_date, if: "conducted_at?"
  scope :ordered, -> {where("received_at is null")}
  scope :received, -> {where("received_at is not null and reviewed_at is null")}
  scope :reviewed, -> {where("reviewed_at is not null")}
  scope :follow, -> {where("reviewed_at > '#{Date.today-21}'  and alert_flag = true and followup_complete is null")}
  def check_received_date
    self.errors.add(:received_at, "date is invalid") if received_at > Date.today
  end
  def check_reviewed_date
    self.errors.add(:reviewed_at, "date is invalid") if reviewed_at > Date.today
  end
  def check_conducted_date
    self.errors.add(:conducted_at, "date is invalid") if conducted_at > Date.today
  end
end