class CreateMedicationFrequencies < ActiveRecord::Migration
  def change
    create_table :medication_frequencies do |t|
      t.string :name

      t.timestamps
    end
  end
end
