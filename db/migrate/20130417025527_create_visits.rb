class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.integer :patient_id
      t.datetime :visit_date
      t.string :visit_reason
      t.boolean :drug_allergy
      t.boolean :drug_interaction
      t.text :s_note
      t.text :o_note
      t.text :a_note
      t.text :p_note

      t.timestamps
    end
  end
end
