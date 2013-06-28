class Appointment < ActiveRecord::Base
  has_one :visit
  belongs_to :patient
  belongs_to :user
  belongs_to :appointment_slot
  validates :user_id, :patient_id, :appointment_date, :appointment_slot_id, :appointment_reason, presence: true
  validates :appointment_slot_id, uniqueness: 
                                  {scope: [:patient, :appointment_date, :cancelled], message: "can exist once for a patient"}
  validates :cancellation_reason, presence: true, if: :cancelled
  validate :check_date
  scope :future, ->{where("appointment_date > ? and cancelled = false", Date.today)}
  scope :nextweek, -> {where("appointment_date > ? and appointment_date < ? and cancelled = false", Date.today, Date.today+7 )}
  scope :todays, ->{where("appointment_date = ? and cancelled = false", Date.today)}
  def check_date
      self.errors.add(:appointment_date, "is invalid") if appointment_date < Date.today 
  end
end