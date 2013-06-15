class CreateContraceptiveHistories < ActiveRecord::Migration
  def change
    create_table :contraceptive_histories do |t|
      t.references :patient, index: true
      t.references :contraceptive, index: true
      t.string :contraceptive_problems

      t.timestamps
    end
  end
end