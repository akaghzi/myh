class CreateCurrentMedications < ActiveRecord::Migration
  def change
    create_table :current_medications do |t|
      t.integer :patient_id
      t.string :name
      t.string :dosage
      t.string :frequency

      t.timestamps
    end
  end
end
