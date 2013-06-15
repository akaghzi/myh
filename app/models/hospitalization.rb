class Hospitalization < ActiveRecord::Base
  belongs_to :patient
  validate :check_date
  def check_date
    self.errors.add(:hospitalization_date, "is invalid") if self.hospitalization_date > Date.today
  end
end
