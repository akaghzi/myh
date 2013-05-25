class CreateAllergies < ActiveRecord::Migration
  def change
    create_table :allergies do |t|
      t.integer :patient_id
      t.string :substance_name
      t.string :substance_type
      t.string :reaction

      t.timestamps
    end
  end
end
