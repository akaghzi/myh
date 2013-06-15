class CreateCurrentMedications < ActiveRecord::Migration
  def change
    create_table :current_medications do |t|
      t.references :patient, index: true
      t.integer :medication_route_id
      t.integer :medication_frequency_id
      t.string :name
      t.string :dosage

      t.timestamps
    end
  end
end
