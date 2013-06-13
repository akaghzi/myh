class AppointmentSlot < ActiveRecord::Base
  has_many :appointments
end
