class CreateMedTests < ActiveRecord::Migration
  def change
    create_table :med_tests do |t|
      t.integer :patient_id
      t.integer :visit_id
      t.integer :med_test_type_id
      t.decimal :measurement
      t.text :mearsurement_note
      t.datetime :ordered_at
      t.datetime :reviewed_at

      t.timestamps
    end
  end
end
