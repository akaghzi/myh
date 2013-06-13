class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :user_id
      t.integer :patient_id
      t.integer :appointment_slot_id
      t.date :appointment_date
      t.string :appointment_type
      t.string :appointment_reason

      t.timestamps
    end
  end
end
