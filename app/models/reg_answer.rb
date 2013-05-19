class RegAnswer < ActiveRecord::Base
  # attr_accessible :content, :patient_id, :reg_question_id
  belongs_to :patient
  belongs_to :reg_question
  validates :patient_id, :reg_question_id, presence: true
  validates :patient_id, :reg_question_id, numericality: true
  validates :content, length: {maximum: 400}
  validates :reg_question_id,  uniqueness: {scope: :patient_id, message: "question should be asked once"}
  after_update { |reg_answer| reg_answer.content = content.downcase }  
  def reg_question_text
    reg_question.content
  end
end