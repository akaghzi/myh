class GynecologyHistory < ActiveRecord::Base
  belongs_to :patient
  validates :problem_type, uniqueness: {scope: :patient}
end
