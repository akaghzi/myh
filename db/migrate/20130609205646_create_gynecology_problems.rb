class CreateGynecologyProblems < ActiveRecord::Migration
  def change
    create_table :gynecology_problems do |t|
      t.string :name

      t.timestamps
    end
  end
end
