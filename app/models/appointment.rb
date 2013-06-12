class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :user
  validates :user_id, :patient_id, :appointment_time, :appointment_reason, presence: true
  validates :appointment_time, uniqueness: {scope: :patient}
  scope :todays, ->{where("appointment_time >= ?",Date.today)}
end