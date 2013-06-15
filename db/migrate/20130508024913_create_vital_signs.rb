class CreateVitalSigns < ActiveRecord::Migration
  def change
    create_table :vital_signs do |t|
      t.references :visit, index: true
      t.decimal :temperature
      t.integer :heart_rate
      t.integer :bp_systolic
      t.integer :bp_diastolic
      t.integer :respiratory_rate
      t.integer :weight
      t.integer :height

      t.timestamps
    end
  end
end
