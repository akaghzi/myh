class CreateMedicalHistories < ActiveRecord::Migration
  def change
    create_table :medical_histories do |t|
      t.references :patient, index: true
      t.references :relationship, index: true
      t.references :disease, index: true
      t.date :diagnosed_at
      t.date :cured_at

      t.timestamps
    end
  end
end
