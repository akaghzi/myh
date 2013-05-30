class CreateSurgeries < ActiveRecord::Migration
  def change
    create_table :surgeries do |t|
      t.integer :patient_id
      t.string :surgery_type
      t.date :surgery_date

      t.timestamps
    end
  end
end
