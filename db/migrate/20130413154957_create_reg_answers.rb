class CreateRegAnswers < ActiveRecord::Migration
  def change
    create_table :reg_answers do |t|
      t.integer :reg_question_id
      t.string :content

      t.timestamps
    end
  end
end
