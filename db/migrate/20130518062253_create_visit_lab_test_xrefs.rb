class CreateVisitLabTestXrefs < ActiveRecord::Migration
  def change
    create_table :visit_lab_test_xrefs do |t|
      t.integer :visit_id
      t.integer :lab_test_id
      t.decimal :measurement
      t.date :received_at
      t.date :reviewed_at

      t.timestamps
    end
  end
end
