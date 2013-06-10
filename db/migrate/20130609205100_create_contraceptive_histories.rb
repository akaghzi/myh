class CreateContraceptiveHistories < ActiveRecord::Migration
  def change
    create_table :contraceptive_histories do |t|
      t.integer :patient_id
      t.boolean :birth_control_pills
      t.string :birth_control_pill_problems
      t.boolean :patch
      t.string :patch_problems
      t.boolean :vaginal_ring
      t.string :vaginal_ring_problems
      t.boolean :condoms
      t.string :condom_problems
      t.boolean :withdrawal
      t.string :withdrawal_problems
      t.boolean :iud
      t.string :iud_problems
      t.boolean :norplant_implanon
      t.string :norplat_implanon_problems
      t.boolean :depo_provera_injection
      t.string :depo_provera_injection_problems
      t.boolean :emergency_contraception
      t.string :emergency_contraception_problems

      t.timestamps
    end
  end
end
