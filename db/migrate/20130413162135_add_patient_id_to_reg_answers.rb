class AddPatientIdToRegAnswers < ActiveRecord::Migration
  def change
    add_column :reg_answers, :patient_id, :integer
  end
end
