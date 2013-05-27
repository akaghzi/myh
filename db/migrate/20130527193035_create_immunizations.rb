class CreateImmunizations < ActiveRecord::Migration
  def change
    create_table :immunizations do |t|
      t.integer :patient_id
      t.string :immunization_for
      t.integer :immunization_year

      t.timestamps
    end
  end
end
