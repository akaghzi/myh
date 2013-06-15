class CreateAllergies < ActiveRecord::Migration
  def change
    create_table :allergies do |t|
      t.references :patient, index: true
      t.string :substance_name
      t.string :substance_type
      t.string :reaction

      t.timestamps
    end
  end
end
