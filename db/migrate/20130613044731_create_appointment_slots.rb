class CreateAppointmentSlots < ActiveRecord::Migration
  def change
    create_table :appointment_slots do |t|
      t.string :name

      t.timestamps
    end
  end
end
