class CreateGynecologyHistories < ActiveRecord::Migration
  def change
    create_table :gynecology_histories do |t|
      t.references :patient, index: true
      t.references :gynecology_problem, index: true
      t.date :problem_date
      t.text :followup

      t.timestamps
    end
  end
end
