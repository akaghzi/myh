class CreateSocialHistories < ActiveRecord::Migration
  def change
    create_table :social_histories do |t|
      t.references :patient, index: true
      t.boolean :smoking
      t.integer :smoking_quantity
      t.boolean :drinking
      t.integer :drinking_quantity
      t.boolean :physical_excercise
      t.integer :excercise_per_day
      t.boolean :substance_abuse
      t.string :substance_type
      t.string :profession
      t.string :pet
      t.boolean :living_with_family
      t.string :marital_status
      t.text :note

      t.timestamps
    end
  end
end
