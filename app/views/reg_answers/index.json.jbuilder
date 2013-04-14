json.array!(@reg_answers) do |reg_answer|
  json.extract! reg_answer, :reg_question_id, :content
  json.url reg_answer_url(reg_answer, format: :json)
end