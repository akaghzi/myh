class CreateLabTests < ActiveRecord::Migration
  def change
    create_table :lab_tests do |t|
      t.string :full_name
      t.string :short_name
      t.string :unit_of_measure
      t.decimal :low_threshold
      t.decimal :high_threshold

      t.timestamps
    end
  end
end