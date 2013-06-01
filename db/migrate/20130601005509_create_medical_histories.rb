class CreateMedicalHistories < ActiveRecord::Migration
  def change
    create_table :medical_histories do |t|
      t.references :patient, index: true
      t.string :disease
      t.date :diagnosed_at
      t.date :cured_at
      t.string :self_or_family

      t.timestamps
    end
  end
end
