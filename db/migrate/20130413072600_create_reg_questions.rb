class CreateRegQuestions < ActiveRecord::Migration
  def change
    create_table :reg_questions do |t|
      t.string :content
      t.string :gender
      t.integer :minimum_age

      t.timestamps
    end
  end
end
