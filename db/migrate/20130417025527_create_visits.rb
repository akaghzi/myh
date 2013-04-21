class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.integer :patient_id
      t.date :visit_date
      t.string :visit_reason
      t.text :visit_note

      t.timestamps
    end
  end
end
