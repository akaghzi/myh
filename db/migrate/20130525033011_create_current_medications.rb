class CreateCurrentMedications < ActiveRecord::Migration
  def change
    create_table :current_medications do |t|
      t.references :patient, index: true
      t.references :medication_route, index: true
      t.references :medication_frequency, index: true
      t.string :name
      t.string :dosage
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
