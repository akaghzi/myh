class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :user
  belongs_to :appointment_slot
  validates :user_id, :patient_id, :appointment_date, :appointment_slot_id, :appointment_reason, presence: true
  validates :appointment_slot_id, uniqueness: {scope: [:patient, :appointment_date], message: "can exist once for a patient"}
  validate :check_date
  scope :todays, ->{where("appointment_date >= ?", Date.today)}
  def check_date
      self.errors.add(:appointment_date, "is invalid") if appointment_date < Date.today 
  end
end