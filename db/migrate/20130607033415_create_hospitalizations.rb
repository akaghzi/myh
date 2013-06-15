class CreateHospitalizations < ActiveRecord::Migration
  def change
    create_table :hospitalizations do |t|
      t.references :patient, index: true
      t.string :hospitalization_reason
      t.date :hospitalization_date
      t.integer :hospitalization_duration
      t.text :hospitalization_note

      t.timestamps
    end
  end
end
