class CreateMenstrualHistories < ActiveRecord::Migration
  def change
    create_table :menstrual_histories do |t|
      t.references :patient, index: true
      t.integer :onset_age
      t.boolean :normal_first_day_of_last_period
      t.integer :period_interval
      t.string :problems_with_period
      t.string :past_problems_with_period

      t.timestamps
    end
  end
end
