class CreateContraceptiveHistories < ActiveRecord::Migration
  def change
    create_table :contraceptive_histories do |t|
      t.references :patient, index: true
      t.integer :contraceptive_id
      t.string :contraceptive_problems

      t.timestamps
    end
  end
end