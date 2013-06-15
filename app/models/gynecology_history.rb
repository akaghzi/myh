class GynecologyHistory < ActiveRecord::Base
  belongs_to :patient
  belongs_to :gynecology_problem
  validates :patient_id, :gynecology_problem_id, presence: true
  validates :gynecology_problem_id, uniqueness: {scope: :patient}
end
