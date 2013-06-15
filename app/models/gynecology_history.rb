class GynecologyHistory < ActiveRecord::Base
  belongs_to :patient
  belongs_to :gynecology_problem
  validates :patient_id, :gynecology_problem_id, presence: true
  validates :gynecology_problem_id, uniqueness: {scope: :patient}
  validate :check_date
  def check_date
    self.errors.add(:problem_date, "is invalid") if self.problem_date > Date.today
  end
end
