class CreateVisitLabTestXrefs < ActiveRecord::Migration
  def change
    create_table :visit_lab_test_xrefs do |t|
      t.references :visit, index: true
      t.references :lab_test, index: true
      t.decimal :measurement
      t.datetime :received_at
      t.datetime :reviewed_at
      t.text :lab_note

      t.timestamps
    end
  end
end
