class AddMinimumAgeToMedTestType < ActiveRecord::Migration
  def change
    add_column :med_test_types, :minimum_age, :integer
  end
end
