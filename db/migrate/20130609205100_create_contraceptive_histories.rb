class CreateContraceptiveHistories < ActiveRecord::Migration
  def change
    create_table :contraceptive_histories do |t|
      t.integer :patient_id
      t.string :contraceptive_type
      t.string :contraceptive_problems

      t.timestamps
    end
  end
end
