class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.references :patient, index: true
      t.references :appointment, index: true
      t.datetime :visited_at
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
