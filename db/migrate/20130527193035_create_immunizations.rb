class CreateImmunizations < ActiveRecord::Migration
  def change
    create_table :immunizations do |t|
      t.references :patient, index: true
      t.integer :vaccine_id
      t.integer :immunization_year

      t.timestamps
    end
  end
end
