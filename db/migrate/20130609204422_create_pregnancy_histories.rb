class CreatePregnancyHistories < ActiveRecord::Migration
  def change
    create_table :pregnancy_histories do |t|
      t.integer :patient_id
      t.boolean :currently_pregnant
      t.integer :full_term_births
      t.integer :preterm_births
      t.integer :spont_miscarriages
      t.integer :elective_abortions
      t.integer :living_children

      t.timestamps
    end
  end
end
