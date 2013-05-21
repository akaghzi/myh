class CreateInsuranceInfos < ActiveRecord::Migration
  def change
    create_table :insurance_infos do |t|
      t.integer :patient_id
      t.string :insurance_carrier
      t.string :insurance_member_id
      t.string :insurance_guarantor
      t.string :insurance_guarantor_relationship

      t.timestamps
    end
  end
end
