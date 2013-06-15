class CreateRegAnswers < ActiveRecord::Migration
  def change
    create_table :reg_answers do |t|
      t.references :patient, index: true
      t.references :reg_question, index: true
      t.string :content

      t.timestamps
    end
  end
end
