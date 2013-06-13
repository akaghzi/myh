class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :user
  belongs_to :appointment_slot
  validates :user_id, :patient_id, :appointment_date, :appointment_slot_id, :appointment_reason, presence: true
  validates :appointment_slot_id, uniqueness: {scope: :appointment_date}
  scope :todays, ->{where("appointment_date >= ?", Date.today)}
end