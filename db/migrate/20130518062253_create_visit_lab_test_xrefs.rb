class CreateVisitLabTestXrefs < ActiveRecord::Migration
  def change
    create_table :visit_lab_test_xrefs do |t|
      t.integer :visit_id
      t.integer :lab_test_id
      t.decimal :measurement
      t.datetime :received_at
      t.datetime :reviewed_at
      t.text :lab_note

      t.timestamps
    end
  end
end
