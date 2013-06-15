class CreateMedicalHistories < ActiveRecord::Migration
  def change
    create_table :medical_histories do |t|
      t.references :patient, index: true
      t.integer :relationship_id
      t.integer :disease_id
      t.date :diagnosed_at
      t.date :cured_at

      t.timestamps
    end
  end
end
