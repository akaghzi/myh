class CreateVisitLabTestXrefs < ActiveRecord::Migration
  def change
    create_table :visit_lab_test_xrefs do |t|
      t.references :visit, index: true
      t.references :lab_test, index: true
      t.decimal :measurement
      t.date :conducted_at
      t.date :received_at
      t.date :reviewed_at
      t.boolean :alert_flag
      t.text :lab_note

      t.timestamps
    end
  end
end
