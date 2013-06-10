class CreateGynecologyHistories < ActiveRecord::Migration
  def change
    create_table :gynecology_histories do |t|
      t.integer :patient_id
      t.string :problem_type
      t.date :problem_date
      t.text :followup

      t.timestamps
    end
  end
end
