class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.references :user, index: true
      t.references :patient, index: true
      t.references :appointment_slot, index: true
      t.date :appointment_date
      t.string :appointment_type
      t.string :appointment_reason

      t.timestamps
    end
  end
end
