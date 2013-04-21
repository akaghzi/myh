class CreateMedTestTypes < ActiveRecord::Migration
  def change
    create_table :med_test_types do |t|
      t.string :full_name
      t.string :short_name
      t.string :unit_of_measure
      t.string :lab_type
      t.boolean :essential
      t.decimal :minimum_threshold
      t.decimal :maximum_threshold

      t.timestamps
    end
  end
end
